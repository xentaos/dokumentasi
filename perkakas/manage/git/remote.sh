#!/usr/bin/env bash
# This file is part of Xenta OS  Organization - Project Management.
# 
# remote.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# remote.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
repository="Nama Repository Git"
echo " Set Remote $repository..."
git remote set-url origin git@github.com:xentaos/$repository.git
echo " Berhasil..."

# Contoh Lokasi Repository xenta-x-icons di github di akses melalui ssh 
# git@github.com:xentaos/xenta-x-icons.git
# Maka diisi cukup variablenya repository=""
# repository="xenta-x-icons"
# echo " Set Remote $repository..."
# git remote set-url origin git@github.com:xentaos/$repository.git
# echo " Berhasil..."
