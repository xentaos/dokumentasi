#!/usr/bin/env bash
# This file is part of XPM - Xenta Project Management.
# 
# verify.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# verify.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
figlet verify.sh
echo " Signature Berkas pin-chat.txt..."
gpg --verify pin-chat.sig       pin-chat.txt
echo " Signature Berkas pin-chat.txt..."
gpg --verify chat-materi.sig    chat-materi.txt
