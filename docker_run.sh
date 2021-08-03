#!/bin/sh
set -e
echo "\n dotnet:"
time docker run --rm -it -v $PWD/csharp:/mnt mcr.microsoft.com/dotnet/sdk dotnet run --project /mnt/
echo "\n node:"
time docker run --rm -it -v $PWD/node:/mnt node node /mnt/index.js
echo "\n php:"
time docker run --rm -it -v $PWD/php:/mnt php php /mnt/index.php
echo "\n golang:"
time docker run --rm -it -v $PWD/go:/mnt golang go run /mnt/main.go
echo "\n rust:"
touch rust/src/main.rs
time docker run --rm -it -v  $PWD/rust:/mnt --env CARGO_HOME=/mnt/cargo rust cargo run --quiet --manifest-path /mnt/Cargo.toml
