#!/bin/sh
#!/bin/sh

#启动2个guest prover, 分别用2个核
ZKWASM_MONGO=mongodb://localhost:27018 CUDA_VISIBLE_DEVICES=0,1 HALO2_PROOF_GPU_EVAL_CACHE=12 nohup ./bin/release/okdexd prover -p=guest -t=2 --config ./config/prover_guest1_config.toml > ./logs/guest_prover1.out 2>&1 &

#启动2个host prover, 分别用1个核
ZKWASM_MONGO=mongodb://localhost:27018 CUDA_VISIBLE_DEVICES=2 HALO2_PROOF_GPU_EVAL_CACHE=12 nohup ./bin/release/okdexd prover -p=host -t=3 --config ./config/prover_host1_config.toml > ./logs/host_prover1.out 2>&1 &


#启动2个batch prover, 分别用1个核
ZKWASM_MONGO=mongodb://localhost:27018 CUDA_VISIBLE_DEVICES=3 HALO2_PROOF_GPU_EVAL_CACHE=12 nohup ./bin/release/okdexd prover -p=batch -t=2 --config ./config/prover_batch1_config.toml > ./logs/batch_prover1.out 2>&1 &
