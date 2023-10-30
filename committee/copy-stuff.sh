#!/bin/sh

# set -v

#rm -rf ./bin/debug/*
rm -rf ./bin/release/*


# cp -f ../source/zkdex-wasm-poc/target/debug/committeed ./bin/debug/
cp -f ../source/zkdex-wasm-poc/target/release/committeed ./bin/release/

