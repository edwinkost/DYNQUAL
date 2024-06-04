
inputDirRoot="/scratch-shared/vbonato/dynqual_simulations/w5e5/existing/1980-1984/"

#~ outputDir=${inputDirRoot}/global/

outputDir="/scratch-shared/edwinaha/dynqual_simulations/w5e5/existing/1980-1984/global/"

# daily resolution
python merge_netcdf_general.py ${inputDirRoot} ${outputDir} "outDailyTotNC" "1980-01-01" "1980-02-28" discharge,waterTemp NETCDF4 True 2 M01,M02,M03,M05,M06,M07,M08,M09 defined 300 -17 -35 52 38 &

# monthly resolution
python merge_netcdf_general.py ${inputDirRoot} ${outputDir} "outMonthAvgNC" "1980-01-01" "1980-12-31" discharge,waterTemp NETCDF4 True 2 M01,M02,M03,M05,M06,M07,M08,M09 defined 300 -17 -35 52 38 &

wait
