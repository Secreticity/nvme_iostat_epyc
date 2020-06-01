#!/bin/bash

#out_mod8epyc2

#echo `/bin/syscfg/syscfg /d biossettings "Memory Mode" | grep "Current" | cut -d: -f2`
#echo `/bin/syscfg/syscfg /d biossettings "Cluster Mode" | grep "Current" | cut -d: -f2`

mount /dev/nvme0n1 /mnt/pm963
echo 40 > /proc/sys/vm/dirty_ratio
sleep 1

#sh ./iostat.sh &
#echo "iostat.sh running..."
#sleep 0.5

#sar 1 -o /home/kau/jwbang/200320/data >> /home/kau/jwbang/200320/out_mod8epyc2_iostat.txt 2>&1 &
#echo "sar (iostat) running..."
#sleep 0.5

sh ./profiling.sh &
echo "profiling.sh running..."
sleep 0.5

exit 0
