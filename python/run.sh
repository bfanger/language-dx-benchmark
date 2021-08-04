#!/usr/bin/bash
TIMEFORMAT=" in %Rs"

mkdir /home/benchmark
cd /home/benchmark
cp /mnt/index.py .

echo ""
echo "- Python -"
time python ./index.py
sed -i -e "s/: 2/: 3/" index.py
time python ./index.py
sed -i -e "s/: 3/: 4/" index.py
time python ./index.py