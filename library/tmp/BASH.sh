#!/bin/bash
# Update Bootscreen
sudo update-initramfs -u
sudo locale-gen --purge --no-archive
sudo update-initramfs -u -t

# Update Icons Chache
sudo gtk-update-icon-cache -f /usr/share/icons/Name-Icons

# Update Font Chache
sudo fc-cache -f -v

# Screenshot GTK
sudo apt install gtk-3-examples
gtk3-widget-factory

# Copy File
cp source_file destination_file
cp /home/dindin/Desktop/Xenta.txt /usr/share/icons/

# Copy Folder
cp -R source_folder destination_folder
cp -R /home/dindin/Desktop/Xenta /usr/share/icons/

# Membuat Perintah Text Bash
# Baris Pertama
#!/bin/bash

chmod 755 namascript

# Install File deb
sudo dpkg -i namapaket.deb

# Install File deb All
sudo dpkg -i *.deb

# Membuat Paket .deb
# buat folder tmp
dpkg -b tmp namapaket.deb

# Extrak Paket .deb
mkdir tmp
dpkg-deb -R namapaket.deb tmp

# Tanda Tangan Paket
dpkg-sig -k 46A1207D --sign bundler ~/upload/*.deb

# Membuat Symslink
ln -s <source> <destination>
ln -s tango.svg tango2.svg
      original ====> link tango2.svg

# Import GPG Key Ke Komputer dari file name-gpg-keyfile.gpg
gpg --import public-key.gpg

# MOUNT FOLDER NETWORK VIA SMBCLIENT CIFS
mount -t cifs //192.168.0.2/IMG /media/smb -o username=root,password=toor

# MAKE TAR.GZ
tar -zcvf name.tar.gz folder/file
tar -zcvf name.tar.gz folder1 folder2 etc..

# EXTRACT TAR.GZ
tar -zxvf name.tar.gz

# MOUNT FILESYSTEM.SQUASHFS (READ ONLY)
mount dir/*.squashfs /mnt/dir -t squashfs -o loop

# EXTRACT FILESYSTEM.SQUASHFS
unsquashfs dir/*.squashfs
mv squashfs-root chroot

# MAKE FILESYSTEM.SQUASHFS
mksquashfs chroot image/live/filesystem.squashfs -e boot
# OR
mksquashfs chroot image/live/filesystem.squashfs
