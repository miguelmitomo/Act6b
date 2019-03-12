numberdirs=$1
for i in $(cat nombres.txt); do
    mkdir $i
    for j in `seq 1 $numberdirs`; do
	mkdir $i/personal$j
    done
done	
