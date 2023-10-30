#!/bin/sh

cd ../source/zkdex-wasm-poc && cargo build --release --features cuda

cd -
