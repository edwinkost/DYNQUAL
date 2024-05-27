#!/bin/bash

# we reserve one node of eejit, one contains 96 cores
#SBATCH -N 1

# we use all cores
#SBATCH -n 48

# wall clock time (maximum 120 hours)
#SBATCH -t 119:59:00

# the partition name 
#SBATCH -p genoa

# job name
#SBATCH -J dynqual

# exporting some variables
#SBATCH --export OUTPUT_FOLDER="test",START_TIME="",END_TIME="",PRE_FILE="",TMP_FILE="",ET0_FILE="",RAD_FILE="",TMP_ANNUAL_AVG_FILE="",BASEFLOW_FILE="",INTERFLOW_FILE="",DIRECT_RUNOFF_FILE="",FRACWATER_FILE="",WATERBODY_ID_FILE="",WATERBODY_TYPE_FILE="",RESMAXCAP_FILE="",RESSFAREA_FILE="",NUM_OF_SPINUP_YRS="",INITIAL_CONDITION_FOLDER="",DATE_FOR_INITIAL_STATES="",SCRIPT_FOLDER=""


# please set where you stored DYNQUAL scripts - DON'T FORGET TO CHANGE THIS
SCRIPT_FOLDER="/home/edwindql/github/edwinkost/DYNQUAL/DynQualModel/"
SCRIPT_FOLDER=${SCRIPT_FOLDER}

# the configuration file
INI_FILE="/home/edwindql/github/edwinkost/DYNQUAL/config_africa/develop/dynqual_05min_offline_develop_parallel_for_each_gcm.ini"
INI_FILE=${INI_FILE}

# please set the following variables
OUTPUT_FOLDER=${OUTPUT_FOLDER}
START_TIME=${START_TIME}
END_TIME=${END_TIME}
PRE_FILE=${PRE_FILE}
TMP_FILE=${TMP_FILE}
ET0_FILE=${ET0_FILE}
RAD_FILE=${RAD_FILE}
TMP_ANNUAL_AVG_FILE=${TMP_ANNUAL_AVG_FILE}
BASEFLOW_FILE=${BASEFLOW_FILE}
INTERFLOW_FILE=${INTERFLOW_FILE}
DIRECT_RUNOFF_FILE=${DIRECT_RUNOFF_FILE}
FRACWATER_FILE=${FRACWATER_FILE}
WATERBODY_ID_FILE=${WATERBODY_ID_FILE}
WATERBODY_TYPE_FILE=${WATERBODY_TYPE_FILE}
RESMAXCAP_FILE=${RESMAXCAP_FILE}
RESSFAREA_FILE=${RESSFAREA_FILE}
NUM_OF_SPINUP_YRS=${NUM_OF_SPINUP_YRS}
INITIAL_CONDITION_FOLDER=${INITIAL_CONDITION_FOLDER}
DATE_FOR_INITIAL_STATES=${DATE_FOR_INITIAL_STATES}

# we activate the correct conda environment on eejit and many other settings
. /home/edwin/load_all_default.sh

# we go to the folder where the folder script
cd ${SCRIPT_FOLDER}


## declare an array variable for the clone codes
declare -a arr=("M01" "M02" "M03" "M05" "M06" "M07" "M08" "M09")


## now loop through the above array
for i in "${arr[@]}"
do
   echo "$i"
   
   CLONE_CODE=$i
   
   python deterministic_runner_offline_vbonato.py ${INI_FILE} \
   -mod                      ${OUTPUT_FOLDER}/${CLONE_CODE}/ \
   -clone_code               ${CLONE_CODE} \
   -start_time               ${START_TIME} \
   -end_time                 ${END_TIME} \
   -pre_file                 ${PRE_FILE} \
   -tmp_file                 ${TMP_FILE} \
   -eto0_file                ${ET0_FILE} \
   -rad_file                 ${RAD_FILE} \
   -tmp_annual_avg_file      ${TMP_ANNUAL_AVG_FILE} \
   -baseflow_file            ${BASEFLOW_FILE} \
   -interflow_file           ${INTERFLOW_FILE} \
   -direct_runoff_file       ${DIRECT_RUNOFF_FILE} \
   -fracwater_file           ${FRACWATER_FILE} \
   -waterbody_id_file        ${WATERBODY_ID_FILE} \
   -waterbody_type_file      ${WATERBODY_TYPE_FILE} \
   -resmaxcap_file           ${RESMAXCAP_FILE} \
   -ressfarea_file           ${RESSFAREA_FILE} \
   -num_of_spinup_yrs        ${NUM_OF_SPINUP_YRS} \
   -initial_condition_folder ${INITIAL_CONDITION_FOLDER}/${CLONE_CODE}/states/ \
   -date_for_initial_states  ${DATE_FOR_INITIAL_STATES} \
   &

done

wait
