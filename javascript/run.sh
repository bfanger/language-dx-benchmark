#!/usr/bin/bash
TIMEFORMAT=" in %Rs"

mkdir /home/benchmark
cd /home/benchmark
cp /mnt/index.js .

echo ""
echo "- Javascript (Node) -"
time node ./index.js
sed -i -e "s/: 2/: 3/" index.js
time node ./index.js
sed -i -e "s/: 3/: 4/" index.js
time node ./index.js