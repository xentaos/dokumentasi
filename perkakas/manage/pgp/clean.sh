#!/usr/bin/env bash
# This file is part of XPM - Xenta Project Management.
# 
# clean.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# clean.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
figlet clean.sh
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls *pdf)
do
  name=${file%%.pdf}
  echo " Menghapus Berkas $name.pdf..."
  rm -rf $name $name.pdf
  echo " Berhasil..."
done
IFS=$(echo -en "\n\b")
for file in $(ls *png)
do
  name=${file%%.png}
  echo " Menghapus Berkas $name.png..."
  rm -rf $name.png
  echo " Berhasil..."
done
IFS=$(echo -en "\n\b")
for file in $(ls *txt)
do
  name=${file%%.txt}
  echo " Menghapus Berkas $name.txt..."
  rm -rf $name.txt
  echo " Berhasil..."
done
IFS=$(echo -en "\n\b")
for file in $(ls *asc)
do
  name=${file%%.asc}
  echo " Menghapus Berkas $name.asc..."
  rm -rf $name.asc
  echo " Berhasil..."
done
