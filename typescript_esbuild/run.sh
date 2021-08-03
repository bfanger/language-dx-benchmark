#!/usr/bin/bash
TIMEFORMAT=" in %Rs"

mkdir /home/benchmark
cd /home/benchmark
cp /mnt/index.ts .
cp /mnt/package.json .

echo ""
echo "- Typescript (esbuild) -"
yarn install --silent
# esbuild doesn't perform any typechecking
time ./node_modules/.bin/esbuild ./index.ts | node
sed -i -e "s/: 2/: 3/" index.ts
time ./node_modules/.bin/esbuild ./index.ts | node
sed -i -e "s/: 3/: 4/" index.ts
time ./node_modules/.bin/esbuild ./index.ts | node