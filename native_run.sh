#!/bin/sh
set -e
echo "\n dotnet:"
time dotnet run --project ./csharp/
echo "\n node:"
time node ./node/index.js
echo "\n php:"
time php ./php/index.php
echo "\n golang:"
time go run ./go/main.go
echo "\n rust:"
touch rust/src/main.rs
time cargo run --quiet --manifest-path ./rust/Cargo.toml