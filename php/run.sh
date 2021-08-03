#!/usr/bin/bash
TIMEFORMAT=" in %Rs"

mkdir /home/benchmark
cd /home/benchmark
cp /mnt/index.php .

echo ""
echo "- PHP -"
time php ./index.php
sed -i -e "s/: 2/: 3/" index.php
time php ./index.php
sed -i -e "s/: 3/: 4/" index.php
time php ./index.php