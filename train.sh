#!/bin/bash
set -e

# Activate the virtual environment
source venv/bin/activate

# Set CUDA devices (adjust if DGX assigns fewer GPUs)
export CUDA_VISIBLE_DEVICES=0,1,2,3

# Run training and log everything
axolotl train.yaml | tee train.log
