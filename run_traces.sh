#!/bin/sh
./build_champsim.sh bimodal no no no lru 4
./build_champsim.sh bimodal no no no lru-no-cce 4
#./build_champsim.sh bimodal no no no ship 2
#./build_champsim.sh bimodal no no no ship-no-cce 2
#./build_champsim.sh bimodal no no no drrip 2
#./build_champsim.sh bimodal no no no drrip-no-cce 2
#./build_champsim.sh bimodal no no no srrip 2
#./build_champsim.sh bimodal no no no srrip-no-cce 2
i=0 #mix number
while read f
do 
	i=`expr $i + 1`

	if [ $i -eq 5 ]
   	then
		./run_4core.sh bimodal-no-no-no-lru-4core 1 10 $i $f
		./run_4core.sh bimodal-no-no-no-lru-no-cce-4core 1 10 $i $f
		#./run_2core.sh bimodal-no-no-no-srrip-2core 1 10 $i $f
		#./run_2core.sh bimodal-no-no-no-srrip-no-cce-2core 1 10 $i $f
		#./run_2core.sh bimodal-no-no-no-drrip-no-cce-2core 1 10 $i $f
      		break
   	fi
	#./run_2core.sh bimodal-no-no-no-lru-2core 50 100 $i $f
	#./run_2core.sh bimodal-no-no-no-lru-no-cce-2core 50 100 $i $f
	#./run_2core.sh bimodal-no-no-no-ship-2core 50 100 $i $f
	#./run_2core.sh bimodal-no-no-no-ship-no-cce-2core 50 100 $i $f
	#./run_2core.sh bimodal-no-no-no-drrip-2core 50 100 $i $f
	#./run_2core.sh bimodal-no-no-no-drrip-no-cce-2core 50 100 $i $f
	#./run_2core.sh bimodal-no-no-no-srrip-2core 50 100 $i $f
	#./run_2core.sh bimodal-no-no-no-srrip-no-cce-2core 50 100 $i $f
	if [ $i -eq 6 ]
   	then
      		break
   	fi
done < ./scripts/traces_combinations.txt

