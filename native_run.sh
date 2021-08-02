#!/bin/sh
set -e
echo "\n dotnet:"
time dotnet run --project ./csharp/
echo "\n node:"
time node ./node/index.js
echo "\n golang:"
time go run ./go/main.go
echo "\n php:"
time php ./php/index.php
