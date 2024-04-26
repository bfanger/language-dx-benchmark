#!/bin/sh
set -e
TIMEFORMAT=" in %Rs"

# Compiled languages
docker run --rm -it -v $PWD/go:/mnt golang:latest bash -e /mnt/run.sh
docker run --rm -it -v $PWD/swift:/mnt swift:latest bash -e /mnt/run.sh
docker run --rm -it -v $PWD/csharp:/mnt mcr.microsoft.com/dotnet/sdk:latest bash -e /mnt/run.sh
docker run --rm -it -v $PWD/rust:/mnt rust:latest bash -e /mnt/run.sh
docker run --rm -it -v $PWD/typescript:/mnt node:latest bash -e /mnt/run.sh
docker run --rm -it -v $PWD/typescript_deno:/mnt denoland/deno:latest bash -e /mnt/run.sh
docker run --rm -it -v $PWD/typescript_bun:/mnt oven/bun:latest bash -e /mnt/run.sh


# Interpreted languages 
docker run --rm -it -v $PWD/php:/mnt php:latest bash -e /mnt/run.sh
docker run --rm -it -v $PWD/python:/mnt python:latest bash -e /mnt/run.sh
docker run --rm -it -v $PWD/javascript:/mnt node:latest bash -e /mnt/run.sh
docker run --rm -it -v $PWD/typescript_esbuild:/mnt node:latest bash -e /mnt/run.sh
