#!/bin/sh
set -e
TIMEFORMAT=" in %Rs"

# Compiled languages

echo "\nGo:"
time docker run --rm -it -v $PWD/go:/mnt -w /mnt golang go run ./main.go
echo "\nC#:"
time docker run --rm -it -v $PWD/csharp:/mnt -w /mnt mcr.microsoft.com/dotnet/sdk dotnet run
echo "\nTypescript:"
docker run --rm -it -v $PWD/typescript:/mnt -w /mnt node yarn install --silent 
time docker run --rm -it -v $PWD/typescript:/mnt -w /mnt node /mnt/node_modules/.bin/ts-node /mnt/index.ts
echo "\nRust:"
touch rust/src/main.rs
time docker run --rm -it -v  $PWD/rust:/mnt -w /mnt --env CARGO_HOME=/mnt/cargo rust cargo run --quiet

# Interpreted languages 
echo "\nPHP:"
time docker run --rm -it -v $PWD/php:/mnt -w /mnt php php ./index.php
echo "\nJavascript:"
time docker run --rm -it -v $PWD/javascript:/mnt -w /mnt node node ./index.js
echo "\nTypescript (esbuild):" # esbuild's typescript doesn't perform typechecking
docker run --rm -it -v $PWD/typescript_esbuild:/mnt -w /mnt node yarn install --silent 
time docker run --rm -it -v $PWD/typescript_esbuild:/mnt -w /mnt node npm run --silent compile_and_run
