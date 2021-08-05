#!/usr/bin/bash
TIMEFORMAT=" in %Rs"

mkdir -p /home/benchmark/Sources/swift
cd /home/benchmark
cp /mnt/Package.swift .
cp /mnt/Sources/swift/main.swift Sources/swift/main.swift


echo ""
echo "- Swift -"
time swift run
sed -i -e "s/: 2/: 3/" Sources/swift/main.swift
time swift run
sed -i -e "s/: 3/: 4/" Sources/swift/main.swift
time swift run