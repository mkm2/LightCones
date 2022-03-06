#!/bin/sh
# ########## Begin Slurm header ##########
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=04:00:00
#SBATCH --mem=80gb
#SBATCH --cpus-per-task=48
#SBATCH --job-name=otoc_simulation_N16_PSI0
#SBATCH --output="otoc_simulation_N16_PSI0-%j.out"
########### End Slurm header ##########
#=
# load modules
# not needed - julia installed locally

# export JULIA_DEPOT_PATH=$SCRATCH
export ON_CLUSTER=1
exec julia --color=no --threads=96 --startup-file=no "$LCDIR/LightCones/typicality_check/shared_krylov.jl" 16 1 1 z $1
=#
