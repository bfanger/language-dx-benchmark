#!/bin/sh
echo "\n dotnet:"
time docker run -it -v $PWD/csharp:/mnt mcr.microsoft.com/dotnet/sdk dotnet run --project /mnt/
echo "\n node:"
time docker run -it -v $PWD/node:/mnt node node /mnt/index.js
echo "\n golang:"
time docker run -it -v $PWD/go:/mnt golang go run /mnt/main.go
echo "\n php:"
time docker run -it -v $PWD/php:/mnt php php /mnt/index.php
