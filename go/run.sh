#!/usr/bin/bash
TIMEFORMAT=" in %Rs"

mkdir /home/benchmark
cd /home/benchmark
cp /mnt/main.go .

echo ""
echo "- Go -"
time go run ./main.go
sed -i -e "s/: 2/: 3/" main.go
time go run ./main.go
sed -i -e "s/: 3/: 4/" main.go
time go run ./main.go