#!/bin/sh
# ########## Begin Slurm header ##########
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=20:00:00
#SBATCH --mem=80gb
#SBATCH --cpus-per-task=48
#SBATCH --job-name=otoc_simulation_N16_rp
#SBATCH --output="otoc_simulation_N16_rp-%j.out"
########### End Slurm header ##########
#=
# load modules
# not needed - julia installed locally

# export JULIA_DEPOT_PATH=$SCRATCH
export ON_CLUSTER=1
exec julia --color=no --threads=96 --startup-file=no "$LCDIR/LightCones/slurm_rp/shared_krylov.jl" 16 100 0 z $1 $2
=#