#!/bin/sh

cd ../source/zkdex-wasm-poc && cargo build --release --features mongodb --features ignorebackend --features onlysync

cd -
