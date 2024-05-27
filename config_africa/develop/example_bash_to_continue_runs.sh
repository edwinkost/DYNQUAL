

# test for ukesm1-0-ll_historical

JOB_NAME="UKEX1985"

OUTPUT_FOLDER="/scratch-shared/edwindql/test_dynqual_final/ukesm1-0-ll/historical/1985-1989/"

START_TIME="1985-01-01"
END_TIME="1989-12-31"

NUM_OF_SPINUP_YRS="0"
# - FROM THE PREVIOUS RUN
INITIAL_CONDITION_FOLDER="/scratch-shared/edwindql/test_dynqual_final/ukesm1-0-ll/historical/1980-1984/"
DATE_FOR_INITIAL_STATES="1984-12-31"


# - meteo forcing files
PRE_FILE="/gpfs/work4/0/dynql/input/forcing/GCM/CMIP6/UKESM/historical/ukesm1-0-ll_w5e5_historical_pr_global_daily_1850_2014_mday-1.nc"
TMP_FILE="/gpfs/work4/0/dynql/input/forcing/GCM/CMIP6/UKESM/historical/ukesm1-0-ll_w5e5_historical_tas_global_daily_1850_2014_C.nc"
ET0_FILE="/gpfs/work4/0/dynql/input/forcing/GCM/CMIP6/UKESM/historical/ukesm1-0-ll_w5e5_historical_pet_global_daily_1979_2014_mday-1.nc"
RAD_FILE="/gpfs/work4/0/dynql/input/forcing/GCM/CMIP6/UKESM/historical/ukesm1-0-ll_w5e5_historical_rsds_global_daily_1850_2014_wm-2.nc"
TMP_ANNUAL_AVG_FILE="/gpfs/work4/0/dynql/input/forcing/GCM/CMIP6/UKESM/historical/ukesm1-0-ll_w5e5_historical_tas_global_annAvg_1850_2014_C.nc"


# - pcrglobwb runoff component files
BASEFLOW_FILE="/projects/0/dfguu2/users/edwin/pcrglobwb_aqueduct_2021_daily_files/version_2021-09-16_q123_merged/baseflow_ukesm1-0-ll_historical_dailyTot_output_1960-2014.nc"
INTERFLOW_FILE="/projects/0/dfguu2/users/edwin/pcrglobwb_aqueduct_2021_daily_files/version_2021-09-16_q123_merged/interflowTotal_ukesm1-0-ll_historical_dailyTot_output_1960-2014.nc"
DIRECT_RUNOFF_FILE="/projects/0/dfguu2/users/edwin/pcrglobwb_aqueduct_2021_daily_files/version_2021-09-16_q123_merged/directRunoff_ukesm1-0-ll_historical_dailyTot_output_1960-2014.nc"


# - reservoir files
FRACWATER_FILE="/projects/0/dfguu/users/edwin/data/valentina_aha_reservoirs/v2024-05-20/existing/merged_fracWaterInp_existing.map"
WATERBODY_ID_FILE="/projects/0/dfguu/users/edwin/data/valentina_aha_reservoirs/v2024-05-20/existing/merged_waterBodyIds_existing.map"
WATERBODY_TYPE_FILE="/projects/0/dfguu/users/edwin/data/valentina_aha_reservoirs/v2024-05-20/existing/merged_waterBodyTyp_existing.map"
RESMAXCAP_FILE="/projects/0/dfguu/users/edwin/data/valentina_aha_reservoirs/v2024-05-20/existing/merged_resMaxCapInp_existing.map"
RESSFAREA_FILE="/projects/0/dfguu/users/edwin/data/valentina_aha_reservoirs/v2024-05-20/existing/merged_resSfAreaInp_existing.map"


sbatch -J ${JOB_NAME} \
--export OUTPUT_FOLDER=${OUTPUT_FOLDER},START_TIME=${START_TIME},END_TIME=${END_TIME},PRE_FILE=${PRE_FILE},TMP_FILE=${TMP_FILE},ET0_FILE=${ET0_FILE},RAD_FILE=${RAD_FILE},TMP_ANNUAL_AVG_FILE=${TMP_ANNUAL_AVG_FILE},BASEFLOW_FILE=${BASEFLOW_FILE},INTERFLOW_FILE=${INTERFLOW_FILE},DIRECT_RUNOFF_FILE=${DIRECT_RUNOFF_FILE},FRACWATER_FILE=${FRACWATER_FILE},WATERBODY_ID_FILE=${WATERBODY_ID_FILE},WATERBODY_TYPE_FILE=${WATERBODY_TYPE_FILE},RESMAXCAP_FILE=${RESMAXCAP_FILE},RESSFAREA_FILE=${RESSFAREA_FILE},NUM_OF_SPINUP_YRS=${NUM_OF_SPINUP_YRS},INITIAL_CONDITION_FOLDER=${INITIAL_CONDITION_FOLDER},DATE_FOR_INITIAL_STATES=${DATE_FOR_INITIAL_STATES} \
runDynQual_global_on_snellius_per_gcm_for_continue.sh
