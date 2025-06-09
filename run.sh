#!/usr/bin/env bash

#SBATCH -p fnlp-4090d
#SBATCH --job-name=tensoRF-lzjjin
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=56
#SBATCH --mem-per-cpu=48G
#SBATCH --output=/remote-home1/lzjjin/project/fudan-course/DATA130051.01/PJ3/TensoRF/Slurmlogs/output-tensoRF-base.log
#SBATCH --error=/remote-home1/lzjjin/project/fudan-course/DATA130051.01/PJ3/TensoRF/Slurmlogs/error-tensoRF-base.log

source ../../../../.bashsrc 
conda init
conda activate TensoRF
which python

work_dir=/inspire/hdd/project/embodied-multimodality/public/lzjjin/fudan-course/DATA130051.01/PJ3/TensoRF/
cd ${work_dir}
export PYTHONPATH="${work_dir}"

# Exps
set HF_ENDPOINT=https://hf-mirror.com
export HF_ENDPOINT=https://hf-mirror.com

cmd="/inspire/hdd/project/embodied-multimodality/public/lzjjin/anaconda3/envs/TensoRF/bin/python train.py --config configs/wineholder.txt"

echo "Executing: ${cmd}"
eval ${cmd}