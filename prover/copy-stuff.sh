#!/bin/sh

# set -v

#rm -rf ./bin/debug/*
rm -rf ./bin/release/*
rm -rf ./bin/wasm/*


# cp -f ../source/zkdex-wasm-poc/target/debug/okdexd ./bin/debug/
cp -f ../source/zkdex-wasm-poc/target/release/okdexd ./bin/release/

cp -f ../source/zkdex-wasm-poc/core/lib/zkdex/pkg/zkdex_wasm_bg_opt.wasm ./bin/wasm/
