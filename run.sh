#!/bin/bash
#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --partition=fllm -A fllm

python main.py \
serialized_model_path=save/ckpt \
dist=false \
task=optimal_path \
train_spec_header_path=training_dataset/preprocessed/training_dataset.csv \
eval_spec_header_path=validation_dataset/preprocessed/validation_dataset.csv \
train_dataset_dir=training_dataset/preprocessed/ \
eval_dataset_dir=validation_dataset/preprocessed/ \
wandb.project=GraphNovo \
wandb.name=PathSearcher 