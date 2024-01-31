#!/bin/bash

echo $1

INDEX=$1

# Define the source file
SOURCE_FILE="prover_config.toml"

# Define the destination files
GUEST_FILE1="prover_guest1_config.toml"
HOST_FILE1="prover_host1_config.toml"
BATCH_FILE1="prover_batch1_config.toml"

GUEST_FILE2="prover_guest2_config.toml"
HOST_FILE2="prover_host2_config.toml"
BATCH_FILE2="prover_batch2_config.toml"

# Copy the source file to the destination files
cp "$SOURCE_FILE" "$GUEST_FILE1"
cp "$SOURCE_FILE" "$HOST_FILE1"
cp "$SOURCE_FILE" "$BATCH_FILE1"

cp "$SOURCE_FILE" "$GUEST_FILE2"
cp "$SOURCE_FILE" "$HOST_FILE2"
cp "$SOURCE_FILE" "$BATCH_FILE2"

# Replace the worker_name in each file
sed -i "s/worker_name = \"4090-$INDEX\"/worker_name = \"4090-$INDEX-guest1\"/" "$GUEST_FILE1"
sed -i "s/worker_name = \"4090-$INDEX\"/worker_name = \"4090-$INDEX-host1\"/" "$HOST_FILE1"
sed -i "s/worker_name = \"4090-$INDEX\"/worker_name = \"4090-$INDEX-batch1\"/" "$BATCH_FILE1"
sed -i "s/worker_name = \"4090-$INDEX\"/worker_name = \"4090-$INDEX-guest2\"/" "$GUEST_FILE2"
sed -i "s/worker_name = \"4090-$INDEX\"/worker_name = \"4090-$INDEX-host2\"/" "$HOST_FILE2"
sed -i "s/worker_name = \"4090-$INDEX\"/worker_name = \"4090-$INDEX-batch2\"/" "$BATCH_FILE2"


echo "Files have been copied and modified."
