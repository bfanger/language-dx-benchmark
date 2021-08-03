#!/usr/bin/bash
TIMEFORMAT=" in %Rs"

mkdir /home/benchmark
cd /home/benchmark
cp /mnt/index.ts .
cp /mnt/package.json .

echo ""
echo "- Typescript -"
yarn install --silent
time ./node_modules/.bin/ts-node ./index.ts
sed -i -e "s/: 2/: 3/" index.ts
time ./node_modules/.bin/ts-node ./index.ts
sed -i -e "s/: 3/: 4/" index.ts
time ./node_modules/.bin/ts-node ./index.ts