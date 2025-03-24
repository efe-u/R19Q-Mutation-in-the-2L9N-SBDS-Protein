#!/bin/sh

#SBATCH --job-name=UcerLab6
#SBATCH --output=2L9N-mini
#SBATCH --time=00:10:00
#SBATCH --exclusive
#SBATCH --partition=caslake
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=48
#SBATCH --account=bios10603

module load namd/2.14

mpiexec.hydra -bootstrap=slurm namd2 "2L9N_R19Q-mini.conf" > "2L9N_R19Q-mini.log"



