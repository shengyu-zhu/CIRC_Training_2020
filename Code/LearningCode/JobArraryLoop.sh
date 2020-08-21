#!/bin/bash
#SBATCH -o log.txt -t 00:05:00
#SBATCH -a 1-50
for i in {1..100}; do
  ip=$SLURM_ARRAY_TASK_ID.$i
  myprogram in.$ip > out.$ip
done