#!/bin/bash
#SBATCH -o out.%a.txt -t 00:05:00
#SBATCH -a 1-10
echo This is job $SLURM_ARRAY_TASK_ID