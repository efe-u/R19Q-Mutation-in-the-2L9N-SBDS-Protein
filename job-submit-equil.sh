#!/bin/sh

#SBATCH --job-name=UcerLab6
#SBATCH --output=2L9N-equil
#SBATCH --time=04:00:00
#SBATCH --exclusive
#SBATCH --partition=caslake
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=48
#SBATCH --account=bios10603

module load namd/2.14

mpiexec.hydra -bootstrap=slurm namd2 "2L9N-heatup-equil.conf" > "2L9N-heatup-equil.log"



