# Bob's language DX performance benchmark

## The task

Convert a json string into a data structure, add two values (1 and 2) from that data structure and print the result (3).

## The twist

This is a trivial task for any language, but instead of measuring how many times per second it can do that operation, this benchmark measures the compile and execute performance.

## Why

Being able to see the result of a code change _fast_ is an important developer experience (DX) feature.

## Results (2024)

| Language                      | Initial    | Incremental |
| ----------------------------- | ---------- | ----------- |
| Go                            | 🐢 slow    | 🐇 fast     |
| Swift                         | 🐢 slow    | 🐢 slow     |
| C#                            | 🐢 slow    | 🐌 slowest  |
| Rust                          | 🐌 slowest | 🐇 fast     |
| Typescript (ts-node)          | 🐢 slow    | 🐢 slow     |
| Typescript (deno/bun/esbuild) | 🐇 fast    | 🐇 fast     |
| PHP                           | 🐇 fast    | 🐇 fast     |
| Javascript (node)             | 🐇 fast    | 🐇 fast     |
| Python                        | 🐇 fast    | 🐇 fast     |
