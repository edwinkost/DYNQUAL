#!/bin/bash

# we reserve one node of eejit, one contains 96 cores
#SBATCH -N 1

# we use all cores
#SBATCH -n 32

# activate the following if we want to reserve the entire node (which is the case if -n 96)
#SBATCH --exclusive

# the partition name 
#SBATCH -p genoa

# job name
#SBATCH -J dynqual


# please set where you stored DYNQUAL scripts
SCRIPT_FOLDER=$HOME/github/Graha010/DYNQUAL/DynQualModel/

# please 
INI_FILE=$HOME/DYNQUAL/ini/global_run/DynQual_05min_global_gcm.ini
# - Note that I noticed that Edward still use quite old parameter files from PCR-GLOBWB. Shall we update this? If yes, I'll allocate some hours around next week. 

# we activate the correct conda environment on eejit and many other settings
. /home/edwindql/load_all_default.sh


# we go to the folder where the folder script
cd ${SCRIPT_FOLDER}


# do some runs with parallelization
python deterministic_runner_offline.py ../config_africa/develop/dynqual_05min_offline_develop.ini &
wait



