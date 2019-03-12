day=1
maxlineas=`cat precipitaciones.txt | wc -l`
linea=1
while [ $linea -le $maxlineas ]; do
    i=`cat precipitaciones.txt | head -${linea} | tail -1`
    column1=`echo $i | awk '{print $1}'`
    column2=`echo $i | awk '{print $2}'`
    if [ $column2 -eq 0 ]; then
	day=$((${column1} % 7))
	if [ $day -eq 1 ]; then
	    echo "lunes"
	elif [ $day -eq 2 ]; then
	    echo "martes"
	elif [ $day -eq 3 ]; then
	    echo "miercoles"
	elif [ $day -eq 4 ]; then
	    echo "jueves"
	elif [ $day -eq 5 ]; then
	    echo "viernes"
	elif [ $day -eq 6 ]; then
	    echo "sabado"
	elif [ $day -eq 0 ]; then
	    echo "domingo"
	fi
    fi
    linea=$(($linea+1))
done



	       
