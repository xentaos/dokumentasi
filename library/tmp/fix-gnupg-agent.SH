#!/bin/bash
#FIX GNUPG-AGENT
sudo apt-get install gnupg-agent pinentry-gnome3
TAMBAHKAN BARIS
echo "use-agent" >>  ~/.gnupg/gpg.conf 
./gnupg/gpg.conf
use-agent
default-key 959CDDD1
./gnupg/gpg-agent.conf
max-cache-ttl 60480000
default-cache-ttl 60480000
cat ~/.gnupg/gpg-agent.conf
echo "test" | gpg -ase -r 0x959CDDD1 | gpg
gpg --rebuild-keydb-caches
pkill -u dindin
#login dengan default sesions
