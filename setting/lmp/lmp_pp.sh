#echo 1 > /proc/sys/vm/compact_memory
#echo 3 > /proc/sys/vm/drop_caches
#echo 100 > /sys/devices/system/cpu/intel_pstate/min_perf_pct
#echo 0 > /sys/devices/system/cpu/intel_pstate/no_turbo
#echo 0 > /proc/sys/kernel/numa_balancing
#cpupower frequency-set -g performance
#export KMP_SETTINGS=1
#export KMP_BLOCKTIME=0
#export KMP_AFFINITY=granularity=fine,verbose,compact,1,0
#export TF_NUM_INTRAOP_THREADS=32
#export TF_INTRA_OP_PARALLELISM_THREADS=64
#export TF_INTRA_OP_PARALLELISM_THREADS=1
#export TF_INTER_OP_PARALLELISM_THREADS=1

# lmp_serial 1 thread
OMP_NUM_THREADS=1 TF_INTRA_OP_PARALLELISM_THREADS=1 TF_INTER_OP_PARALLELISM_THREADS=1 /usr/bin/time -v numactl -c 0 -m 0 lmp_serial -in in.lammps

# lmp_serial 8 threads
OMP_NUM_THREADS=8 TF_INTRA_OP_PARALLELISM_THREADS=8 TF_INTER_OP_PARALLELISM_THREADS=1 /usr/bin/time -v numactl -c 0 -m 0 lmp_serial -in in.lammps

# mpi more than 10 threads will crash
# mpi  4 threads
OMP_NUM_THREADS=1 TF_INTRA_OP_PARALLELISM_THREADS=1 TF_INTER_OP_PARALLELISM_THREADS=1  mpirun --allow-run-as-root -np 4 lmp_mpi -in in.lammps

# mpi 8 threads
OMP_NUM_THREADS=1 TF_INTRA_OP_PARALLELISM_THREADS=1 TF_INTER_OP_PARALLELISM_THREADS=1  mpirun --allow-run-as-root -np 8 lmp_mpi -in in.lammps

