for i in `seq 1 254`; do
    if [ $i -eq 1 ]; then
	ping -c 1 192.168.1.1 > tempFile8
    else
	ping -c 1 192.168.1.$i >> tempFile8
    fi
done
cat tempFile8 | grep -A 4 -B 1 "ttl="
rm tempFile8


