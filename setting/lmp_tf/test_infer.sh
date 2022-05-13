echo 1 > /proc/sys/vm/compact_memory
echo 3 > /proc/sys/vm/drop_caches
echo 100 > /sys/devices/system/cpu/intel_pstate/min_perf_pct
echo 0 > /sys/devices/system/cpu/intel_pstate/no_turbo
echo 0 > /proc/sys/kernel/numa_balancing
cpupower frequency-set -g performance
export KMP_SETTINGS=1
export KMP_BLOCKTIME=0
export KMP_AFFINITY=granularity=fine,verbose,compact,1,0
export OMP_NUM_THREADS=16
#export TF_NUM_INTRAOP_THREADS=32
for intra in 1 2 4 8 16 32 48 64
do 
	for inter in 1 2 4 8 16 32 48 64
	do
echo 1 > /proc/sys/vm/compact_memory
echo 3 > /proc/sys/vm/drop_caches
echo "************** start with intra=$intra inter=$inter Total wall time"
export TF_INTRA_OP_PARALLELISM_THREADS=$intra
export TF_INTER_OP_PARALLELISM_THREADS=$inter
export OMP_NUM_THREADS=inter
#export TF_NUM_INTEROP_THREADS=1
numactl -c 0 -m 0 lmp_serial -in in.lammps
echo "******************DONE with intra=$intra inter=$inter Total wall time"
sleep 10
done
done
