# 📹 Advan KitKat (E1C+) IP Camera Optimization

![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Target OS](https://img.shields.io/badge/Android-4.4%20KitKat%20%2F%204.2.2-green.svg)
![Status](https://img.shields.io/badge/Status-Completed-success.svg)

Dokumentasi optimasi dan daur ulang (*hardware repurposing*) tablet **Advan E1C+ (Android KitKat 4.4 / MediaTek)** menjadi **Server CCTV / IP Webcam 24/7** yang adem, hemat daya, dan ringan. 

Proyek ini menyelesaikan masalah keterbatasan RAM dan sertifikat keamanan HTTPS yang kadaluarsa pada Android jadul melalui metode *rooting*, *debloating* sistem, serta pengaturan streaming lokal HTTP.

---

## 🛠️ Ringkasan Kendala & Solusi

| Kendala Teknis | Solusi yang Diterapkan |
| :--- | :--- |
| **RAM Terbatas & Sistem Lemot** | Melakukan *rooting* dan membekukan (*freeze*) ±81 aplikasi sistem yang tidak relevan via Link2SD. |
| **Sertifikat SSL/HTTPS Kadaluarsa** | Menggunakan **Via Browser** dan streaming jaringan lokal **HTTP** (tidak memerlukan enkripsi internet). |
| **Risiko Overheat 24/7** | Mematikan tampilan layar saat streaming (*Disable vision*) dan membatasi bitrate video. |

---

## 📥 Aplikasi yang Dibutuhkan (Prerequisites)

Unduh bahan-bahan APK berikut sesuai dengan versi yang telah diuji dan kompatibel:

| Aplikasi | Fungsi | Versi | Link Unduh Resmi |
| :--- | :--- | :--- | :--- |
| **Framaroot** | *Exploit Root* 1-Klik untuk MediaTek | `v1.9.3` | [APKMirror Download](https://www.apkmirror.com/apk/alephzain/framaroot/framaroot-1-9-3-release/framaroot-1-9-3-android-apk-download/) |
| **Link2SD** | Pengelola sistem untuk *Freeze/Debloat* | `v4.3.4` | [APKMirror Download](https://www.apkmirror.com/apk/bulent-akpinar/link2sd/link2sd-4-3-4-release/) |
| **IP Webcam** | Engine server CCTV & perekam video | `v1.17.22` | [APKMirror Download](https://www.apkmirror.com/apk/thyoni-tech/ip-webcam/ip-webcam-1-17-22-891-multiarch-release/ip-webcam-1-17-22-891-multiarch-3-android-apk-download/) |
| **Via Browser** | Browser super ringan untuk akses antarmuka | `v7.0.0` | [APKMirror Download](https://www.apkmirror.com/apk/tu-yafeng/via-browser-fast-light-geek-best-choice/via-browser-fast-light-7-0-0-release/) |

---

## 🚀 Langkah-Langkah Eksekusi

### 1. Rooting Perangkat
1. Instal **Framaroot v1.9.3**.
2. Pilih aksi **Install SuperSU**.
3. Pilih *exploit* yang sesuai (contoh: **Baidu** / **Boromir**).
4. Setelah muncul pesan sukses, lakukan *reboot* tablet.

### 2. Debloating Sistem (Link2SD)
Buka **Link2SD**, berikan izin akses root, lalu bekukan (*freeze*) aplikasi latar belakang berikut untuk melegakan RAM:
* **Fitur Aksesibilitas:** *TalkBack*, *Sintesis Suara Google*.
* **Visual & Theme:** *MTK Live Wallpaper*, *Live Wallpapers Picker*.
* **Fitur Bawaan:** *Pesan (SMS)*, *Email*, *Kalkulator*, *Kalender*, *Print Spooler*, *Bluetooth* (jika tidak dipakai).

> ⚠️ **Catatan Keamanan:** Jangan membekukan *Package Installer*, *Settings*, *Penyimpanan Media*, dan *SuperSU* agar sistem tidak mengalami *bootloop*.

### 3. Konfigurasi IP Webcam
Buka **IP Webcam** dan atur konfigurasi berikut sebelum menjalankan server:

* **Format Tanggal/Waktu (Timestamp Overlay):** 
  Setel ke `%Y-%m-%d %H:%M:%S` (Hasil: `YYYY-MM-DD HH:MM:SS`).
* **Kualitas & Bitrate Video:**
  * Resolusi: `640x480` (VGA) atau `1280x720` (HD).
  * Quality: `50% - 60%` (Menghasilkan bitrate hemat $\approx 3\text{ MB/menit}$ atau $\approx 400\text{ kbps}$).
* **Power Management:**
  * Centang **Stay awake** (agar proses tidak mati saat standby).
  * Centang **Disable vision / Keep screen turned off** (mematikan layar saat streaming berjalan untuk mencegah *overheat*).

---

## 🌐 Akses Multi-Camera & Remote Monitoring

1. **Akses Lokal:**
   Buka alamat IP yang muncul pada IP Webcam (contoh: `http://192.168.1.X:8080`) menggunakan **Via Browser** dari HP/Laptop yang terhubung ke Wi-Fi sama.
2. **Multi-Camera Display:**
   Gunakan aplikasi seperti **tinyCam Monitor** di HP utama untuk menggabungkan beberapa *feed* IP Webcam ke dalam satu layar *split-screen*.
3. **Akses Luar Rumah (Remote):**
   Gunakan fitur **Subnet Router** pada **Tailscale** yang diinstal di PC/Router rumah untuk mengakses IP lokal CCTV saat berada di luar jaringan rumah.

---

## 📜 Lisensi
Proyek ini dilisensikan di bawah [MIT License](LICENSE) — bebas digunakan dan dikembangkan kembali.
