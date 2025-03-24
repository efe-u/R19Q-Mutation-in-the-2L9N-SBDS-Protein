#!/bin/sh

#SBATCH --job-name=npt-equilibrium
#SBATCH --output=2L9N_R19Q-NPT
#SBATCH --time=10:00:00
#SBATCH --exclusive
#SBATCH --partition=caslake
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=48
#SBATCH --account=

module load namd/2.14

mpiexec.hydra -bootstrap=slurm namd2 "2L9N_R19Q-mini-heatup-equil-npt1.conf" > "2L9N_R19Q-mini-heatup-equil-npt1.log"



