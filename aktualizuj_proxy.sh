#!/bin/bash

if [ ! -f /home/bartek/kamery.conf ]; then
    echo "[BŁĄD] Brak pliku /home/bartek/kamery.conf!"
    exit 1
fi
KAMERY=$(grep -v '^#' /home/bartek/kamery.conf | tr -d '\n ' | tr ',' '\n' | grep -v '^$')

echo "=== PRZYWRACANIE SPRAWDZONEJ ARCHITEKTURY RTSP + SPLAY ==="
echo "--------------------------------------------------------------------------------"

# CONFIG PROXY 1 (PORT 8554)
CONFIG_P1="rtspAddress: 0.0.0.0:8554
rtpAddress: :8000
rtcpAddress: :8001
rtmpAddress: :1935
hlsAddress: :8888
webrtcAddress: :8889
srtAddress: :8890
moq: no
rtspReadBufferCount: 2048
readTimeout: 20s
writeTimeout: 20s

paths:"

for cam in $KAMERY; do
    CONFIG_P1="$CONFIG_P1
  cam_${cam}/main:
    source: rtsp://10.4.17.201:554/cam/realmonitor?channel=${cam}&subtype=0
    sourceLinkType: tcp
    runOnInitRestart: yes
  cam_${cam}/sub:
    source: rtsp://10.4.17.201:554/cam/realmonitor?channel=${cam}&subtype=1
    sourceLinkType: tcp
    runOnInitRestart: yes"
done

if [ -f /etc/mediamtx/mediamtx.yml ]; then
    echo "$CONFIG_P1" | sudo tee /etc/mediamtx/mediamtx.yml > /dev/null
elif [ -f /home/bartek/mediamtx.yml ]; then
    echo "$CONFIG_P1" > /home/bartek/mediamtx.yml
fi

# CONFIG PROXY GPU (PORT 6554)
CONFIG_GPU="rtspAddress: 0.0.0.0:6554
rtpAddress: :6000
rtcpAddress: :6001
rtmpAddress: :6935
hlsAddress: :6888
webrtcAddress: :6889
webrtcLocalUDPAddress: :6189
srtAddress: :6890
moq: no

paths:"

echo "#!/bin/bash" > /home/bartek/proxy_kamer_test/start_ffmpeg_gpu.sh
echo "# Automatycznie wygenerowany skrypt startowy FFmpeg" >> /home/bartek/proxy_kamer_test/start_ffmpeg_gpu.sh

WATCHDOG_OPTS="-timeout 5000000 -rtsp_transport tcp"

for cam in $KAMERY; do
    cam_padded=$(printf "%02d" $cam)
    
    CONFIG_GPU="$CONFIG_GPU
  kamera_${cam_padded}_sub_norm:
    source: publisher
    runOnInitRestart: yes
    runOnInit: /home/bartek/proxy_kamer_test/start_ffmpeg_gpu.sh ${cam} sub ${cam_padded}"

    CONFIG_GPU="$CONFIG_GPU
  kamera_${cam_padded}_main_norm:
    source: publisher
    runOnInitRestart: yes
    runOnInit: /home/bartek/proxy_kamer_test/start_ffmpeg_gpu.sh ${cam} main ${cam_padded}"

    # Powrót do stabilnego wyjścia RTSP (-f rtsp) z losowym przesunięciem startu
    echo "if [ \"\$1\" -eq $cam ] && [ \"\$2\" == \"sub\" ]; then" >> /home/bartek/proxy_kamer_test/start_ffmpeg_gpu.sh
    echo "  sleep \$(echo \"scale=2; 1 + (\$(shuf -i 1-150 -n 1) / 100)\" | bc)" >> /home/bartek/proxy_kamer_test/start_ffmpeg_gpu.sh
    echo "  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi $WATCHDOG_OPTS -i rtsp://127.0.0.1:8554/cam_${cam}/sub -vf \"fps=15,scale_vaapi=w=640:h=360\" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_${cam_padded}_sub_norm" >> /home/bartek/proxy_kamer_test/start_ffmpeg_gpu.sh
    echo "fi" >> /home/bartek/proxy_kamer_test/start_ffmpeg_gpu.sh

    echo "if [ \"\$1\" -eq $cam ] && [ \"\$2\" == \"main\" ]; then" >> /home/bartek/proxy_kamer_test/start_ffmpeg_gpu.sh
    echo "  sleep \$(echo \"scale=2; \$(shuf -i 1-150 -n 1) / 100\" | bc)" >> /home/bartek/proxy_kamer_test/start_ffmpeg_gpu.sh
    echo "  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi $WATCHDOG_OPTS -i rtsp://127.0.0.1:8554/cam_${cam}/main -vf \"fps=15,scale_vaapi=w=1280:h=720\" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_${cam_padded}_main_norm" >> /home/bartek/proxy_kamer_test/start_ffmpeg_gpu.sh
    echo "fi" >> /home/bartek/proxy_kamer_test/start_ffmpeg_gpu.sh
done

echo "$CONFIG_GPU" > /home/bartek/proxy_kamer_test/mediamtx.yml
chmod +x /home/bartek/proxy_kamer_test/start_ffmpeg_gpu.sh
echo "[OK] Przywrócono i zablokowano stabilny format RTSP."
