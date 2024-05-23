#!/bin/bash

# we reserve one node of eejit, one contains 96 cores
#SBATCH -N 1

# we use all cores
#SBATCH -n 32

# wall clock time (maximum 120 hours)
#SBATCH -t 119:59:00

# the partition name 
#SBATCH -p genoa

# job name
#SBATCH -J dynqual


# please set where you stored DYNQUAL scripts - DON'T FORGET TO CHANGE THIS
SCRIPT_FOLDER=/home/edwindql/github/edwinkost/DYNQUAL/DynQualModel/

# the configuration file
INI_FILE=/home/edwindql/github/edwinkost/DYNQUAL/config_africa/develop/dynqual_05min_offline_develop_parallel.ini

# we activate the correct conda environment on eejit and many other settings
. /home/edwin/load_all_default.sh


# we go to the folder where the folder script
cd ${SCRIPT_FOLDER}


MAIN_OUTPUT_FOLDER="/scratch-shared/edwindql/dynqual_test/gswp3-w5e5/historical-reference/"


# do some runs with parallelization
STARTTIME
ENDTIME
PRE_FILE
TMP_FILE
ET0_FILE
RAD_FILE
TMP_ANNUAL_AVG_FILE
BASEFLOW_FILE
INTERFLOW_FILE
DIRECT_RUNOFF_FILE

python deterministic_runner_offline_vbonato.py ${INI_FILE} -mod ${MAIN_OUTPUT_FOLDER}/M06 -clone M06 -startTime ${STARTTIME} -endTime ${ENDTIME} -pre_file ${PRE_FILE} -tmp_file ${TMP_FILE} -eto_file ${ET0_FILE} -rad_file ${RAD_FILE} -tmp_annual_avg_file ${TMP_ANNUAL_AVG_FILE} &
python deterministic_runner_offline_vbonato.py ${INI_FILE} -mod ${MAIN_OUTPUT_FOLDER}/M06 -clone MXX -startTime ${STARTTIME} -endTime ${ENDTIME} -pre_file ${PRE_FILE} -tmp_file ${TMP_FILE} -eto_file ${ET0_FILE} -rad_file ${RAD_FILE} -tmp_annual_avg_file ${TMP_ANNUAL_AVG_FILE} &
python deterministic_runner_offline_vbonato.py ${INI_FILE} -mod ${MAIN_OUTPUT_FOLDER}/M06 -clone MXX -startTime ${STARTTIME} -endTime ${ENDTIME} -pre_file ${PRE_FILE} -tmp_file ${TMP_FILE} -eto_file ${ET0_FILE} -rad_file ${RAD_FILE} -tmp_annual_avg_file ${TMP_ANNUAL_AVG_FILE} &
python deterministic_runner_offline_vbonato.py ${INI_FILE} -mod ${MAIN_OUTPUT_FOLDER}/M06 -clone MXX -startTime ${STARTTIME} -endTime ${ENDTIME} -pre_file ${PRE_FILE} -tmp_file ${TMP_FILE} -eto_file ${ET0_FILE} -rad_file ${RAD_FILE} -tmp_annual_avg_file ${TMP_ANNUAL_AVG_FILE} &
python deterministic_runner_offline_vbonato.py ${INI_FILE} -mod ${MAIN_OUTPUT_FOLDER}/M06 -clone MXX -startTime ${STARTTIME} -endTime ${ENDTIME} -pre_file ${PRE_FILE} -tmp_file ${TMP_FILE} -eto_file ${ET0_FILE} -rad_file ${RAD_FILE} -tmp_annual_avg_file ${TMP_ANNUAL_AVG_FILE} &
python deterministic_runner_offline_vbonato.py ${INI_FILE} -mod ${MAIN_OUTPUT_FOLDER}/M06 -clone MXX -startTime ${STARTTIME} -endTime ${ENDTIME} -pre_file ${PRE_FILE} -tmp_file ${TMP_FILE} -eto_file ${ET0_FILE} -rad_file ${RAD_FILE} -tmp_annual_avg_file ${TMP_ANNUAL_AVG_FILE} &
python deterministic_runner_offline_vbonato.py ${INI_FILE} -mod ${MAIN_OUTPUT_FOLDER}/M06 -clone MXX -startTime ${STARTTIME} -endTime ${ENDTIME} -pre_file ${PRE_FILE} -tmp_file ${TMP_FILE} -eto_file ${ET0_FILE} -rad_file ${RAD_FILE} -tmp_annual_avg_file ${TMP_ANNUAL_AVG_FILE} &
python deterministic_runner_offline_vbonato.py ${INI_FILE} -mod ${MAIN_OUTPUT_FOLDER}/M06 -clone MXX -startTime ${STARTTIME} -endTime ${ENDTIME} -pre_file ${PRE_FILE} -tmp_file ${TMP_FILE} -eto_file ${ET0_FILE} -rad_file ${RAD_FILE} -tmp_annual_avg_file ${TMP_ANNUAL_AVG_FILE} &


wait










wait



