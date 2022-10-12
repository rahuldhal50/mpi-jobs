#!/bin/bash
#PBS -N mpitsetjob
#PBS -l nodes=r1:ppn=1+r2:ppn=1
#PBS -d /home/netweb/mpitest
#PBS -o out.txt
#PBS -e err.txt

cd /home/netweb/mpitest
echo $PBS_NODEFILE
mpirun -machinefile $PBS_NODEFILE -np 2 ./cpi
#echo "Start sleep for 100 Secondds ..."
#sleep 100
#echo "Job completed ..."

