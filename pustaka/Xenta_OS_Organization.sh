#!/usr/bin/env bash
========================================================================
BAB 1 PROJECT DOKUMENTASI DIRECTORY HIERARCHY
========================================================================
./dokumentasi/
./dokumentasi/perkakas/git/
./dokumentasi/perkakas/git/script/
./dokumentasi/perkakas/git/script/add.sh
#!/usr/bin/env bash
# This file is part of Xenta OS  Organization - Project Management.
# 
# add.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# add.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
cd ../../../../
echo " Git Add Local..."
git add -A
echo " Berhasil..."

./dokumentasi/perkakas/git/script/commit.sh
#!/usr/bin/env bash
# This file is part of Xenta OS  Organization - Project Management.
# 
# commit.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# commit.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
cd ../../../../
echo " Git Commit Local..."
git commit -am "Update"
echo " Berhasil..."

./dokumentasi/perkakas/git/script/pull.sh
#!/usr/bin/env bash
# This file is part of Xenta OS  Organization - Project Management.
# 
# pull.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# pull.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
cd ../../../../
echo " Pull Request Github..."
git pull
echo " Berhasil..."

./dokumentasi/perkakas/git/script/push.sh
#!/usr/bin/env bash
# This file is part of Xenta OS  Organization - Project Management.
# 
# push.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# push.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
cd ../../
echo " Git Push Local to Github..."
git push
echo " Berhasil..."

./../../../remote.sh
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
team=dokumentasi
cd ../../
echo " Set Remote $team..."
git remote set-url origin git@github.com:xentaos/$team.git
echo " Berhasil..."

./../../pgp/
./../../../clean.sh
#!/usr/bin/env bash
# This file is part of Xenta OS  Organization - Project Management.
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

./../../../clearsign.sh
#!/usr/bin/env bash
# This file is part of Xenta OS  Organization - Project Management.
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

./../../../decrypt.sh
#!/usr/bin/env bash
# This file is part of Xenta OS  Organization - Project Management.
# 
# decrypt.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# decrypt.sh is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
figlet decrypt.sh
SAVEIF=$IFS
IFS=$(echo -en "\n\b")
for file in $(ls Logchat*gpg)
do
  name=${file%%.gpg}
  uid=root@dev.xentaos.org
  echo " Decrypt Berkas $name.gpg Menjadi Berkas $name.pdf..."
  gpg --output $name.pdf --decrypt --recipient $uid $name.gpg
  echo " Berhasil..."
done
IFS=$(echo -en "\n\b")
for file in $(ls Screenshot*gpg)
do
  name=${file%%.gpg}
  uid=root@dev.xentaos.org
  echo " Decrypt Berkas $name.gpg Menjadi Berkas $name.png..."
  gpg --output $name.png --decrypt --recipient $uid $name.gpg
  echo " Berhasil..."
done
IFS=$(echo -en "\n\b")
for file in $(ls pin*gpg)
do
  name=${file%%.gpg}
  uid=root@dev.xentaos.org
  echo " Decrypt Berkas $name.gpg Menjadi Berkas $name.txt..."
  gpg --output $name.txt --decrypt --recipient $uid $name.gpg
  echo " Berhasil..."
done
IFS=$(echo -en "\n\b")
for file in $(ls chat*gpg)
do
  name=${file%%.gpg}
  uid=root@dev.xentaos.org
  echo " Decrypt Berkas $name.gpg Menjadi Berkas $name.txt..."
  gpg --output $name.txt --decrypt --recipient $uid $name.gpg
  echo " Berhasil..."
done

./../../../encrypt.sh
#!/usr/bin/env bash
# This file is part of Xenta OS  Organization - Project Management.
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

./../../../signature.sh
#!/usr/bin/env bash
# This file is part of Xenta OS  Organization - Project Management.
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

./../../../verify.sh
#!/usr/bin/env bash
# This file is part of Xenta OS  Organization - Project Management.
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

./../perkakas/
./../../e-book/
./../pustaka/
./../../e-book/
./../../../source/
./../../../../image/
./../../../../../heading/
./../../../../../../01/
./../../../../../../../mv.sh

#!/usr/bin/env bash
# This file is part of Xenta OS  Organization - Project Management.
# 
# mv.sh is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# Foobar is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with Foobar.  If not, see <http://www.gnu.org/licenses/>.
figlet mv.sh
mv '' ''

./../../../../../../../wget.sh
./../../../../../../../wget.txt
./../../../../../../../copyright.txt
./../../../../link/
./../../../../../wiki/wikipedia/id.txt
./../../../../../web/
./../project
./../../e-book
./../../../install
./../../../desktop
./../../../perintah
./../../../manual
./../README.md
./../.gitignore
./../update.sh
kesenian
../org
../../git/
../../../remote
../../../pull
../../../add
../../../commit
../../../push
../../gitrpacp
../perkakas
../../artwork
../../design
../pustaka
../../logo
../../../xentaos
../../artwork
../../../icons
../../../../desktop
../../../../../
../../../themes
../../../../desktop
../../../../../
../../../wallpaper
../../../../desktop
../../../../../
../../../faces
../../../login
../../../../mdm
../../../../../html
../../../../../../
../../../../../gdm
../../../../../../
../../../boot
../../../../plymouth
../../../splash
../../../../gimp
../../../../inkscape
../../../../bluefish
../../../../gbilling
../../../../libreoffice
../../design
../../../merchandiser
../../../../kemeja
../../../../t-shirt
../../../../hoddie
../../../../topi
../../../../mugs
../../../../calendar
../../../../sticker
../../../promotion
../../../../barner
../../../product
../../../../dvd
../../../../e-book
../../../../sticker
../project
../../artwork
../../../icons
../../../../desktop
../../../../../xenta-icons
../../../../../xenta-x-icons
../../../themes
../../../../desktop
../../../../../xenta-x-themes
../../../../../xenta-y-themes
../../../../../xenta-z-themes
../../design
../README.md
../.gitignore
---------------------------------------
komunikasi
../org
../../git/
../../../remote
../../../pull
../../../add
../../../commit
../../../push
../perkakas
../pustaka
../../kulgram
../../agenda
../../kontak
../project
../../kulgram
../../../linuxser
../../../developer
../README.md
------------------------------------------------------------------------
pengembangan
../org
../../git/
../../../remote
../../../pull
../../../add
../../../commit
../../../push
../perkakas
../../distro
../../../amd64
../../../i386
../pustaka
../project
../../distro
../../../amd6
../../../i386
../README.md
../.gitignore
------------------------------------------------------------------------
perilisan
../org
../../git/
../../../remote
../../../pull
../../../add
../../../commit
../../../push
../../gitrpacp
../perkakas
../../tester
../../screenshot
../../report
../pustaka
../project
../../tester
../../../amd64
../../../i386
../../screenshot
../../../amd64
../../../i386
../../report
../../../amd64
../../../i386
../README.md
../.gitignore
------------------------------------------------------------------------
pemaketan
../org
../../git/
../../../remote
../../../pull
../../../add
../../../commit
../../../push
../../gitrpacp
../perkakas
../../repository
../../packages
../../../build
../../../package
../pustaka
../../repository
../../packages
../../../debian
../../../../source
../../../../../format
../../../../control
../../../../watch
../../../../rules
../../../../copyright
../../../../changelog
../project
../../repository
../../../conf
../../../../distributions
../../../../options
../../../pool
../../../../import
../../../../main
../../../../restricted
../../../../queen
../../../../upstream
../../../dists
../../../../arok
../../../db
../../../index
../../../clean
../../packages
../../../import
../../../../a
../../../../../
../../../../b
../../../../../
../../../../c
../../../../../
../../../../d
../../../../../
../../../../e
../../../../../
../../../../f
../../../../../
../../../../g
../../../../../
../../../../h
../../../../../
../../../../i
../../../../../
../../../../j
../../../../../
../../../../k
../../../../../
../../../../l
../../../../../
../../../../m
../../../../../
../../../../n
../../../../../
../../../../o
../../../../../
../../../../p
../../../../../
../../../../q
../../../../../
../../../../r
../../../../../
../../../../s
../../../../../
../../../../t
../../../../../
../../../../u
../../../../../
../../../../v
../../../../../
../../../../w
../../../../../
../../../../x
../../../../../
../../../../y
../../../../../
../../../../z
../../../../../
../../../main
../../../../a
../../../../../
../../../../b
../../../../../
../../../../c
../../../../../
../../../../d
../../../../../
../../../../e
../../../../../
../../../../f
../../../../../
../../../../g
../../../../../
../../../../h
../../../../../
../../../../i
../../../../../
../../../../j
../../../../../
../../../../k
../../../../../
../../../../l
../../../../../
../../../../m
../../../../../
../../../../n
../../../../../
../../../../o
../../../../../
../../../../p
../../../../../
../../../../q
../../../../../
../../../../r
../../../../../
../../../../s
../../../../../
../../../../t
../../../../../
../../../../u
../../../../../
../../../../v
../../../../../
../../../../w
../../../../../
../../../../x
../../../../../
../../../../y
../../../../../
../../../../z
../../../../../
../../../restricted
../../../../a
../../../../../
../../../../b
../../../../../
../../../../c
../../../../../
../../../../d
../../../../../
../../../../e
../../../../../
../../../../f
../../../../../
../../../../g
../../../../../
../../../../h
../../../../../
../../../../i
../../../../../
../../../../j
../../../../../
../../../../k
../../../../../
../../../../l
../../../../../
../../../../m
../../../../../
../../../../n
../../../../../
../../../../o
../../../../../
../../../../p
../../../../../
../../../../q
../../../../../
../../../../r
../../../../../
../../../../s
../../../../../
../../../../t
../../../../../
../../../../u
../../../../../
../../../../v
../../../../../
../../../../w
../../../../../
../../../../x
../../../../../
../../../../y
../../../../../
../../../../z
../../../../../
../../../queen
../../../../a
../../../../../
../../../../b
../../../../../
../../../../c
../../../../../
../../../../d
../../../../../
../../../../e
../../../../../
../../../../f
../../../../../
../../../../g
../../../../../
../../../../h
../../../../../
../../../../i
../../../../../
../../../../j
../../../../../
../../../../k
../../../../../
../../../../l
../../../../../
../../../../m
../../../../../
../../../../n
../../../../../
../../../../o
../../../../../
../../../../p
../../../../../
../../../../q
../../../../../
../../../../r
../../../../../
../../../../s
../../../../../
../../../../t
../../../../../
../../../../u
../../../../../
../../../../v
../../../../../
../../../../w
../../../../../
../../../../x
../../../../../
../../../../y
../../../../../
../../../../z
../../../../../
../../../upstream
../../../../a
../../../../../
../../../../b
../../../../../
../../../../c
../../../../../
../../../../d
../../../../../
../../../../e
../../../../../
../../../../f
../../../../../
../../../../g
../../../../../
../../../../h
../../../../../
../../../../i
../../../../../
../../../../j
../../../../../
../../../../k
../../../../../
../../../../l
../../../../../
../../../../m
../../../../../
../../../../n
../../../../../
../../../../o
../../../../../
../../../../p
../../../../../
../../../../q
../../../../../
../../../../r
../../../../../
../../../../s
../../../../../
../../../../t
../../../../../
../../../../u
../../../../../
../../../../v
../../../../../
../../../../w
../../../../../
../../../../x
../../../../../
../../../../y
../../../../../
../../../../z
../../../../../
../README.md
../.gitignore

SIGNATURE
------------------------------------------------------------------------
/
Dindin Hernawan <root@dev.xentaos.org>
Nick: dindinG41TR3
ABCDEFGHIJKLMNOPQRSTUVWXYZ
QWERTYUIOPASDFGHJKLZXCVBNM
abcdefghijklmnopqrstuvwxyz
qwertyuiopasdfghjklzxcvbnm
~!@#$%^&*()_+[]\{}|;': 
1234567890-="/*,./<>?`
------------------------------------------------------------------------

