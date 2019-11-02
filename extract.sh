a=$(ls | tail -n 48)
i=0
for x in $a
do
	i=`expr $i + 1`
	echo $i
	cat $x | grep "CPU 0 cumulative IPC"  | awk 'NR==1' | awk -F ' ' '{print $5}' >> "data.txt"
	cat $x | grep "CPU 1 cumulative IPC"  | awk 'NR==1'| awk -F ' ' '{print $5}' >>"data.txt"
done
