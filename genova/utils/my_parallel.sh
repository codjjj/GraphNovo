#!/bin/bash
#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --partition=fllm -A fllm
#SBATCH --mem=300G
#SBATCH --ntasks-per-node=2


for i in $(seq 1 2)
do
    nohup python3 /ailab/user/dingjian/gnovo/GraphNovo/genova/utils/graph_constructor.py $i 2 /ailab/user/dingjian/gnovo/GraphNovo/training_dataset/mgf/ training_dataset  &
done