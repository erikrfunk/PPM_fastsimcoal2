#!/bin/bash

PREFIX=$1
ITRS=$2
ITRE=$3

for i in $(seq $ITRS $ITRE); do
mkdir run$i
cp ${PREFIX}.tpl ${PREFIX}.est ${PREFIX}_jointDAFpop1_0.obs run$i"/"
cd run$i
~/Programs/fsc27_linux64/fsc27093 -t ${PREFIX}.tpl -e ${PREFIX}.est -d -n100000 -L40 -c8 -M
cd ..
done
