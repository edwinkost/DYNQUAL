
inputDirRoot="/scratch-shared/vbonato/dynqual_simulations/w5e5/existing/1980-1984/"

#~ outputDir=${inputDirRoot}/global/

outputDir="/scratch-shared/edwinaha/dynqual_simulations/w5e5/existing/1980-1984/global/"

python merge_netcdf_general.py ${inputDirRoot} ${outputDir} "outDailyTotNC" "1980-01-01" "1981-02-28" discharge,waterTemp NETCDF4 True 2 M01,M02,M03,M05,M06,M07,M08,M09 defined 300 -37 -35 52 38


#~ # file_type, options are: outDailyTotNC, outMonthTotNC, outMonthAvgNC, outMonthEndNC, outAnnuaTotNC, outAnnuaAvgNC, outAnnuaEndNC
#~ file_type  = str(sys.argv[3])
#~ startDate  = str(sys.argv[4]) 
#~ endDate    = str(sys.argv[5])


#~ # starting and end dates
#~ startDate  = str(sys.argv[4]) 
#~ endDate    = str(sys.argv[5])

#~ # list of netcdf files that will be merged:
#~ netcdfList = str(sys.argv[6])

#~ inputDirRoot = sys.argv[1] 
#~ outputDir    = 
