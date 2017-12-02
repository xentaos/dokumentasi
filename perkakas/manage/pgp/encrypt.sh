#!/usr/bin/env bash
# This file is part of XPM - Xenta Project Management.
# 
# encrypt.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# encrypt.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
figlet encrypt.sh
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *pdf)
do
  name=${file%%.pdf}
  uid=root@dev.xentaos.org
  echo " Encrypt Berkas $name.pdf Menjadi Berkas $name.gpg..."
  gpg --output $name.gpg --encrypt --recipient $uid $name.pdf
  echo " Berhasil..."
done
IFS=$(echo -en "\n\b")
for file in $(ls *png)
do
  name=${file%%.png}
  uid=root@dev.xentaos.org
  echo " Encrypt Berkas $name.png Menjadi Berkas $name.gpg..."
  gpg --output $name.gpg --encrypt --recipient $uid $name.png
  echo " Berhasil..."
done
IFS=$(echo -en "\n\b")
for file in $(ls *txt)
do
  name=${file%%.txt}
  uid=root@dev.xentaos.org
  echo " Encrypt Berkas $name.txt Menjadi Berkas $name.gpg..."
  gpg --output $name.gpg --encrypt --recipient $uid $name.txt
  echo " Berhasil..."
done
