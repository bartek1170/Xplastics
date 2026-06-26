# Proxy Kamer RTSP - Optymalizacja GPU Intel (VAAPI)

Archiwum projektowe i produkcyjne systemu proxy dla **44 strumieni kamer RTSP**. System został w pełni zoptymalizowany pod kątem sprzętowej akceleracji dekodowania wideo przy użyciu zintegrowanej karty graficznej Intel (Intel QuickSync / VAAPI), co pozwoliło na drastyczne obniżenie zużycia zasobów procesora (CPU).

---

## 📊 Wyniki Optymalizacji (Przed vs Po)

| Parametr | Stan Krytyczny (Dekodowanie CPU) | Stan Stabilny (Akceleracja VAAPI) | Status |
| :--- | :---: | :---: | :---: |
| **Load Average** | **48.78 - 61.81** (Serwer klękał) | **2.06** (Pełna płynność) | **📉 Giga spadek** |
| **Luz Procesora (%Cpu id)** | **0.0%** (CPU permanentnie przeciążone) | **82.7%** (CPU odpoczywa) | **☕ Komfort systemu** |
| **Oczekiwanie I/O (%Cpu wa)** | **17.1%** (Wąskie gardło sieci/dysku) | **2.8%** (Brak zatorów) | **🚀 Zlikwidowane** |
| **Zużycie CPU / proces FFmpeg**| **36.0% – 54.5%** | **2.7% – 5.3%** | **🎮 Karta przejęła ruch** |
| **Użycie pamięci RAM** | **10.5 GiB** | **4.0 GiB** | **🧠 Uwolniono 6.5 GB** |

---

## 🛠️ Architektura Systemu i Wytyczne

System opiera się na dwóch instancjach serwera MediaMTX działających w potoku:

1. **Instancja Główna (`mediamtx.service`):**
   * Działa na domyślnym porcie `8554`.
   * Odpowiada za bezpośrednie, stabilne zbieranie oryginalnych strumieni RTSP z kamer zewnętrznych.
   * Zapobiega przeciążeniom kamer poprzez utrzymywanie pojedynczych połączeń upstream.

2. **Skrypt Transkodujący (`start_ffmpeg_gpu.sh`):**
   * Pobiera strumienie z instancji głównej (`localhost:8554`).
   * **Kluczowa wytyczna sprzętowa:** Każdy proces FFmpeg ma zaimplementowane flagi `-hwaccel vaapi -hwaccel_device /dev/dri/renderD128` do sprzętowego dekodowania klatek obrazu.
   * **Wytyczna stabilności:** Dodano sekwencję opóźniającą `sleep` przy restartach pętli, co zapobiega pętli masowego, jednoczesnego restartowania procesów i chroni GPU przed chwilowym udławieniem przy spadkach pakietów sieciowych.

3. **Instancja Testowa/Wyjściowa (`mediamtx-test.service`):**
   * Przyjmuje przetworzone, lekkie strumienie z FFmpeg i wystawia je do końcowego podglądu.

---

## ⚠️ Napotkane Problemy i Usunięte Awarie

* **Konflikt zdublowanych usług:** Wykryto i permanentnie usunięto ukrytą, starą usługę `proxy_kamer_02.service`, która działała w tle na tych samych portach, powodując masowe gubienie pakietów, błędy alokacji pamięci na karcie graficznej oraz ciągłe restarty procesów.
* **Falowanie licznika procesów (42-44):** Lekkie wahania liczby aktywnych procesów wynikają wyłącznie z dropów pakietów na samych kamerach (RTSP packet loss). System radzi sobie z tym automatycznie, natychmiastowo podnosząc procesy w bezpieczny sposób.

---

## 📂 Zawartość Repozytorium

* `mediamtx.yml` - Konfiguracja proxy wideo dla instancji transkodującej.
* `start_ffmpeg_gpu.sh` - Skrypt pętli uruchamiający transkodowanie FFmpeg przez VAAPI dla wszystkich 44 kamer.
* `aktualizuj_proxy.sh` - Skrypt automatyzujący i wdrażający poprawki w systemie.
* `.gitignore` - Zabezpieczenie przed upublicznieniem pliku `kamery.conf` zawierającego prywatne adresy IP i dane dostępowe do kamer.

