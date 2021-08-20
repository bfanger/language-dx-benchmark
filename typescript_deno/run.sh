#!/usr/bin/bash
TIMEFORMAT=" in %Rs"

mkdir /home/benchmark
cd /home/benchmark
cp /mnt/index.ts .

echo ""
echo "- Typescript (deno) -"
time deno run --quiet ./index.ts
sed -i -e "s/: 2/: 3/" index.ts
time deno run --quiet ./index.ts
sed -i -e "s/: 3/: 4/" index.ts
time deno run --quiet ./index.ts