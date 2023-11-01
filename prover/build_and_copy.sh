#!/bin/sh 

COMMIT_ID=$1


SOURCE_DIR=../source/zkdex-wasm-poc

if [ ! -d "../source/zkdex-wasm-poc" ]; then
	git clone https://github.com/okx/zkdex-wasm-poc.git ../source/zkdex-wasm-poc
fi
PREV_WD=`pwd`
cd $SOURCE_DIR
git reset --hard HEAD
git checkout main
git fetch
git checkout $COMMIT_ID
ACTUAL_COMMIT_ID=`git log -1 | head -n 1 | awk '{print $2}'`
if [ "$ACTUAL_COMMIT_ID" != "$COMMIT_ID" ]; then
echo "checkout commit id $COMMIT_ID error"
exit 1
fi
echo "using commit id $COMMIT_ID with commit msg:"

# cargo build --package committeed  --features ignorebackend --features mongodb --features onlysync --release
cargo build --package okdexd --features cuda --features committeeprover --release

cd $PREV_WD

cp $SOURCE_DIR/target/release/okdexd ./bin/release/
