#!/usr/bin/env bash
# This file is part of XPM - Xenta Project Management.
# 
# clearsign.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# clearsign.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
figlet clearsign.sh
echo " Clear Sign Berkas pin-chat.txt..."
gpg --clearsign pin-chat.txt
echo " Berhasil..."
echo " Clear Sign Berkas chat-materi.txt..."
gpg --clearsign chat-materi.txt
echo " Berhasil..."
