#!/usr/bin/env bash
# This file is part of XPM - Xenta Project Management.
# 
# signature.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# signature.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
figlet signature.sh
echo " Signature Berkas pin-chat.txt..."
gpg --output pin-chat.sig       --detach-sig pin-chat.txt
echo " Berhasil..."
echo " Signature Berkas chat-materi.txt..."
gpg --output chat-materi.sig    --detach-sig chat-materi.txt
echo " Berhasil..."
