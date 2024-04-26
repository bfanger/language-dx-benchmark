#!/bin/sh
TIMEFORMAT=" in %Rs"

# Compiled languages
echo "\nGo:"
time go run ./go/main.go
echo "\nSwift:"
time swift ./swift/Sources/swift/main.swift 
echo "\nC#:"
time dotnet run --project ./csharp/
echo "\nRust:"
touch rust/src/main.rs
time cargo run --quiet --manifest-path ./rust/Cargo.toml
echo "\nTypescript (ts-node):"
# npm -g i ts-node
time ts-node ./typescript/index.ts
echo "\nTypescript (deno):"
time deno run --quiet ./typescript_deno/index.ts

# Interpreted languages 
echo "\nPHP:"
time php ./php/index.php
echo "\nPython:"
time python3 ./python/index.py
echo "\nJavascript:"
time node ./javascript/index.js
echo "\nTypescript (esbuild):" # esbuild's typescript doesn't perform typechecking
# npm -g i esbuild
time esbuild ./typescript_esbuild/index.ts | node
echo "\nTypescript (bun):"
time bun ./typescript_bun/index.ts
