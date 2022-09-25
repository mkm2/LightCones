#!/bin/sh
# ########## Begin Slurm header ##########
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=30:00:00
#SBATCH --mem=350gb
#SBATCH --cpus-per-task=48
#SBATCH --job-name=otoc_simulation_N17_BS_sector_AVP
#SBATCH --output="otoc_simulation_N17_BS_sector_AVP-%j.out"
########### End Slurm header ##########
#=
# load modules
# not needed - julia installed locally

# export JULIA_DEPOT_PATH=$SCRATCH
export ON_CLUSTER=1
exec julia --color=no --threads=96 --startup-file=no "$LCDIR/LightCones/averaging_procedure/shared_krylov_sector.jl" 17 50 50 BS z $1
=#
