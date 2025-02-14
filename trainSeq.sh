#!/bin/bash
#SBATCH -c 1                # Number of cores (-c)
#SBATCH -t 0-12:00          # Runtime in D-HH:MM, minimum of 10 minutes
#SBATCH -p gpu   # Partition to submit to
#SBATCH --gres=gpu:1
#SBATCH --mem=50000           # Memory pool for all cores (see also --mem-per-cpu)
#SBATCH -o myoutput_%j.out  # File to which STDOUT will be written, %j inserts jobid
#SBATCH -e myerrors_%j.err  # File to which STDERR will be written, %j inserts jobid
#SBATCH --mail-type=END
#SBATCH --mail-user=imsinha@college.harvard.edu

source ~/.bashrc
conda activate gledReal

python main_seq_bfs.py