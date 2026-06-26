#!/bin/bash
# Automatycznie wygenerowany skrypt startowy FFmpeg
if [ "$1" -eq 6 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_6/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_06_sub_norm
fi
if [ "$1" -eq 6 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_6/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_06_main_norm
fi
if [ "$1" -eq 23 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_23/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_23_sub_norm
fi
if [ "$1" -eq 23 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_23/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_23_main_norm
fi
if [ "$1" -eq 24 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_24/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_24_sub_norm
fi
if [ "$1" -eq 24 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_24/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_24_main_norm
fi
if [ "$1" -eq 26 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_26/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_26_sub_norm
fi
if [ "$1" -eq 26 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_26/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_26_main_norm
fi
if [ "$1" -eq 27 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_27/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_27_sub_norm
fi
if [ "$1" -eq 27 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_27/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_27_main_norm
fi
if [ "$1" -eq 30 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_30/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_30_sub_norm
fi
if [ "$1" -eq 30 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_30/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_30_main_norm
fi
if [ "$1" -eq 31 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_31/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_31_sub_norm
fi
if [ "$1" -eq 31 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_31/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_31_main_norm
fi
if [ "$1" -eq 32 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_32/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_32_sub_norm
fi
if [ "$1" -eq 32 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_32/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_32_main_norm
fi
if [ "$1" -eq 33 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_33/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_33_sub_norm
fi
if [ "$1" -eq 33 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_33/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_33_main_norm
fi
if [ "$1" -eq 34 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_34/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_34_sub_norm
fi
if [ "$1" -eq 34 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_34/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_34_main_norm
fi
if [ "$1" -eq 44 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_44/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_44_sub_norm
fi
if [ "$1" -eq 44 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_44/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_44_main_norm
fi
if [ "$1" -eq 45 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_45/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_45_sub_norm
fi
if [ "$1" -eq 45 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_45/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_45_main_norm
fi
if [ "$1" -eq 52 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_52/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_52_sub_norm
fi
if [ "$1" -eq 52 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_52/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_52_main_norm
fi
if [ "$1" -eq 53 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_53/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_53_sub_norm
fi
if [ "$1" -eq 53 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_53/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_53_main_norm
fi
if [ "$1" -eq 58 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_58/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_58_sub_norm
fi
if [ "$1" -eq 58 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_58/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_58_main_norm
fi
if [ "$1" -eq 59 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_59/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_59_sub_norm
fi
if [ "$1" -eq 59 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_59/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_59_main_norm
fi
if [ "$1" -eq 62 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_62/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_62_sub_norm
fi
if [ "$1" -eq 62 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_62/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_62_main_norm
fi
if [ "$1" -eq 63 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_63/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_63_sub_norm
fi
if [ "$1" -eq 63 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_63/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_63_main_norm
fi
if [ "$1" -eq 67 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_67/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_67_sub_norm
fi
if [ "$1" -eq 67 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_67/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_67_main_norm
fi
if [ "$1" -eq 86 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_86/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_86_sub_norm
fi
if [ "$1" -eq 86 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_86/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_86_main_norm
fi
if [ "$1" -eq 182 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_182/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_182_sub_norm
fi
if [ "$1" -eq 182 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_182/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_182_main_norm
fi
if [ "$1" -eq 184 ] && [ "$2" == "sub" ]; then
  sleep $(echo "scale=2; 1 + ($(shuf -i 1-150 -n 1) / 100)" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_184/sub -vf "fps=15,scale_vaapi=w=640:h=360" -c:v h264_vaapi -b:v 400k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_184_sub_norm
fi
if [ "$1" -eq 184 ] && [ "$2" == "main" ]; then
  sleep $(echo "scale=2; $(shuf -i 1-150 -n 1) / 100" | bc)
  exec ffmpeg -loglevel error -threads 1 -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -hwaccel_output_format vaapi -timeout 5000000 -rtsp_transport tcp -i rtsp://127.0.0.1:8554/cam_184/main -vf "fps=15,scale_vaapi=w=1280:h=720" -c:v h264_vaapi -b:v 1200k -g 30 -tune zerolatency -an -f rtsp rtsp://127.0.0.1:6554/kamera_184_main_norm
fi
