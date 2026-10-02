# Belajar IoT dan C++: 4 Relay Sweep (ESP8266)

Proyek latihan koding dasar C++ untuk mengontrol modul 4 relay menggunakan NodeMCU ESP8266.

## Hardware & Pin
- **Board:** NodeMCU v2 (ESP8266)
- **Pin Relay:**
  - Relay 1 -> Pin D1 (GPIO5)
  - Relay 2 -> Pin D2 (GPIO4)
  - Relay 3 -> Pin D5 (GPIO14)
  - Relay 4 -> Pin D6 (GPIO12)

## Fitur Code (C++)
- Menggunakan logika **Active LOW**.
- Perulangan otomatis (`for` loop) untuk menyalakan dan mematikan relay secara bergantian.
- Monitoring status via **Serial Monitor** pada *baud rate* `115200`.

## Framework
- VS Code + PlatformIO

## 📂 Daftar Proyek / Daur Ulang Hardware
* [📷 Advan KitKat CCTV 24/7](./Advan-kitkat-cctv/) - Panduan mengubah tablet Android 4.4/4.2.2 jadul menjadi IP Camera hemat daya.
* [📱 Oppo A3s CCTV](./cctv-oppo-a3s/) - Konfigurasi dan integrasi perangkat Oppo A3s sebagai kamera pemantau.
