#!/usr/bin/bash
TIMEFORMAT=" in %Rs"

mkdir /home/benchmark
cd /home/benchmark
cp /mnt/index.ts .

echo ""
echo "- Typescript (bun) -"
time bun ./index.ts
sed -i -e "s/: 2/: 3/" index.ts
time bun ./index.ts
sed -i -e "s/: 3/: 4/" index.ts
time bun ./index.ts