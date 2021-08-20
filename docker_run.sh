#!/bin/sh
set -e
TIMEFORMAT=" in %Rs"

# Compiled languages
docker run --rm -it -v $PWD/go:/mnt golang bash -e /mnt/run.sh
docker run --rm -it -v $PWD/swift:/mnt swift bash -e /mnt/run.sh
docker run --rm -it -v $PWD/csharp:/mnt mcr.microsoft.com/dotnet/sdk bash -e /mnt/run.sh
docker run --rm -it -v $PWD/rust:/mnt rust bash -e /mnt/run.sh
docker run --rm -it -v $PWD/typescript:/mnt node bash -e /mnt/run.sh
docker run --rm -it -v $PWD/typescript_deno:/mnt denoland/deno bash -e /mnt/run.sh

# Interpreted languages 
docker run --rm -it -v $PWD/php:/mnt php bash -e /mnt/run.sh
docker run --rm -it -v $PWD/python:/mnt python bash -e /mnt/run.sh
docker run --rm -it -v $PWD/javascript:/mnt node bash -e /mnt/run.sh
docker run --rm -it -v $PWD/typescript_esbuild:/mnt node bash -e /mnt/run.sh
