#!/bin/bash

if [ $# -ne 5 ]; then
	echo "Expecting 5 positional arguments:"
	echo "	Prefix"
	echo "	Starting iteration"
	echo "	Ending iteration"
	echo "	Number of nodes"
	echo "	Number of tasks"
else
	PREFIX=$1
	ITERS=$2
	ITERE=$3
	NODES=$4
	TASKS=$5
fi

for i in $(seq $ITERS $ITERE); do
	mkdir run$i
	cp ${PREFIX}.tpl ${PREFIX}.est ${PREFIX}_jointDAFpop1_0.obs run$i"/"	
	cd run$i
	JOBNAME=${PREFIX}${i}.sh
	(
	echo "#!/bin/bash"
	echo ""
	echo "#SBATCH --nodes=$NODES"
	echo "#SBATCH --time=24:00:00"
	echo "#SBATCH --partition=amilan"
	echo "#SBATCH --ntasks=$TASKS"
	echo "#SBATCH --job-name=${PREFIX}${i}-job"
	echo "#SBATCH --output=${PREFIX}${i}-job.%j.out"	
	echo ""
	echo "module purge"
	echo ""
	echo "/projects/erfu6577/fsc27_linux64/fsc27093 -t ${PREFIX}.tpl -e ${PREFIX}.est -d -n150000 -L60 -M"
	) > $JOBNAME
	chmod +x $JOBNAME
	sbatch $JOBNAME
	cd ..
done
