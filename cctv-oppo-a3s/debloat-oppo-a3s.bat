@echo off
REM Meminta persetujuan sebelum eksekusi
pause

REM =============================================================
REM 1. Masuk & Eksekusi Perintah ADB Debloat Oppo A3s
REM =============================================================

REM Hapus Aplikasi Bawaan Sistem Oppo (ColorOS)
adb shell pm uninstall -k --user 0 com.oppo.market
adb shell pm uninstall -k --user 0 com.coloros.video
adb shell pm uninstall -k --user 0 com.coloros.music
adb shell pm uninstall -k --user 0 com.coloros.gallery3d
adb shell pm uninstall -k --user 0 com.coloros.compass
adb shell pm uninstall -k --user 0 com.coloros.weather.service
adb shell pm uninstall -k --user 0 com.coloros.calculator
adb shell pm uninstall -k --user 0 com.nearme.themes space

REM Hapus Aplikasi Google yang Menyedot RAM Latar Belakang
adb shell pm uninstall -k --user 0 com.google.android.youtube
adb shell pm uninstall -k --user 0 com.google.android.gm
adb shell pm uninstall -k --user 0 com.google.android.apps.maps
adb shell pm uninstall -k --user 0 com.google.android.music
adb shell pm uninstall -k --user 0 com.google.android.videos
adb shell pm uninstall -k --user 0 com.google.android.drive

REM Selesai
pause
