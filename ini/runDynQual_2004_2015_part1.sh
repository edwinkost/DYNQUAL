#!/bin/bash
#SBATCH -t 120:00:00
#SBATCH -p normal
#SBATCH -N 1
cd /home/ejones/
python DynQualModel/parallel_pcrglobwb_runner.py historical_run/setup_05min_2004_2015_part1.ini