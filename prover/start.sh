#!/bin/sh

#启动2个guest prover, 分别用2个核
ZKWASM_MONGO=mongodb://localhost:27018 CUDA_VISIBLE_DEVICES=0,1 HALO2_PROOF_GPU_EVAL_CACHE=12 nohup ./bin/release/okdexd prover -p=guest -t=2 --config ./config/prover_config.toml > ./logs/guest_prover1.out 2>&1 &
ZKWASM_MONGO=mongodb://localhost:27018 CUDA_VISIBLE_DEVICES=2,3 HALO2_PROOF_GPU_EVAL_CACHE=12 nohup ./bin/release/okdexd prover -p=guest -t=2 --config ./config/prover_config.toml > ./logs/guest_prover2.out 2>&1 &

#启动2个host prover, 分别用1个核
ZKWASM_MONGO=mongodb://localhost:27018 CUDA_VISIBLE_DEVICES=4 HALO2_PROOF_GPU_EVAL_CACHE=12 nohup ./bin/release/okdexd prover -p=host -t=3 --config ./config/prover_config.toml > ./logs/host_prover1.out 2>&1 &
ZKWASM_MONGO=mongodb://localhost:27018 CUDA_VISIBLE_DEVICES=5 HALO2_PROOF_GPU_EVAL_CACHE=12 nohup ./bin/release/okdexd prover -p=host -t=3 --config ./config/prover_config.toml > ./logs/host_prover2.out 2>&1 &


#启动2个batch prover, 分别用1个核
ZKWASM_MONGO=mongodb://localhost:27018 CUDA_VISIBLE_DEVICES=6 HALO2_PROOF_GPU_EVAL_CACHE=12 nohup ./bin/release/okdexd prover -p=batch -t=2 --config ./config/prover_config.toml > ./logs/batch_prover1.out 2>&1 &
ZKWASM_MONGO=mongodb://localhost:27018 CUDA_VISIBLE_DEVICES=7 HALO2_PROOF_GPU_EVAL_CACHE=12 nohup ./bin/release/okdexd prover -p=batch -t=2 --config ./config/prover_config.toml > ./logs/batch_prover2.out 2>&1 &
