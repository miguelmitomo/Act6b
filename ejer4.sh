contpar=1
contimpar=1
for i in $(cat numeros.txt); do
    if [ $((${i}%2)) -eq 0 ]; then
	if [ $contpar -eq 1 ]; then
	    echo $i > par.txt
	else
	    echo $i >> par.txt
	fi
	contpar=$(($contpar+1))
    else
	if [ $contimpar -eq 1 ]; then
	    echo $i > impar.txt
	else
	    echo $i >> impar.txt
	fi
	contimpar=$(($contimpar+1))
    fi
done
echo "Números par:"
cat par.txt
echo "Números impar:"
cat impar.txt

