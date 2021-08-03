#!/usr/bin/bash
TIMEFORMAT=" in %Rs"

mkdir -p /home/benchmark/src
cd /home/benchmark
cp /mnt/src/main.rs src/main.rs
cp /mnt/Cargo.toml .

echo ""
echo "- Rust -"
cargo update
time cargo run --quiet
sed -i -e "s/: 2/: 3/" src/main.rs
time cargo run --quiet
sed -i -e "s/: 3/: 4/" src/main.rs
time cargo run --quiet