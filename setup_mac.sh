#!/bin/bash

echo "--- Memulai Transformasi macOS Tahoe untuk LXQt ---"

# 1. Update dan Install Dependencies
sudo apt update && sudo apt install -y git wget unzip kvantum kvantum-themes

# 2. Membuat direktori yang dibutuhkan
mkdir -p ~/.themes ~/.icons ~/Pictures

# 3. Mengunduh Wallpaper macOS Sequoia/Tahoe
echo "--- Mengunduh Wallpaper ---"
wget -O ~/Pictures/macos_tahoe.jpg https://raw.githubusercontent.com/zhifanguo/macOS-Wallpapers/main/macOS%20Sequoia.jpg

# 4. Mengunduh Ikon WhiteSur (Versi Ringkas)
echo "--- Mengunduh Ikon (Ini mungkin memakan waktu...) ---"
wget https://github.com/vinceliuice/WhiteSur-icon-theme/archive/refs/tags/2024-05-01.zip -O icons.zip
unzip icons.zip
mv WhiteSur-icon-theme-2024-05-01/src/WhiteSur ~/.icons/
rm -rf icons.zip WhiteSur-icon-theme-2024-05-01

# 5. Mengunduh Tema Kvantum (Tahoe/WhiteSur Style)
echo "--- Mengunduh Tema Kvantum ---"
# Menggunakan tema WhiteSur-Kvantum yang sudah ada di repo umum
git clone https://github.com/vinceliuice/WhiteSur-kde.git
cp -r WhiteSur-kde/Kvantum/WhiteSur ~/.config/Kvantum/
rm -rf WhiteSur-kde

echo "----------------------------------------------------"
echo "INSTALASI SELESAI!"
echo "----------------------------------------------------"
echo "Langkah Terakhir (Manual):"
echo "1. Buka 'Kvantum Manager' -> Change Theme -> Pilih 'WhiteSur'."
echo "2. Buka 'Appearance' -> Widget Style -> Pilih 'kvantum'."
echo "3. Di 'Appearance' -> Icons -> Pilih 'WhiteSur'."
echo "4. Klik kanan Desktop -> Desktop Preferences -> Pilih wallpaper di ~/Pictures/macos_tahoe.jpg"
