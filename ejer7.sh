DirName=$1
cont=0
actualRoute=`pwd`
cd $DirName
checkRoute=`pwd`
if [ $checkRoute != $actualRoute ]; then
    DirRoute=`sudo find / -name "$DirName"`
    ls $DirRoute/*txt > tempFile
    maxlines=`cat tempFile | wc -l`
    for line in `seq 1 $maxlines`; do
	i=`cat tempFile | head -${line} | tail -1`
	rm $i
	cont=$((cont+1))
    done
    rm tempFile
    if [ $cont -eq 0 ]; then
	echo "No hay ficheros .txt en la carpeta seleccionada"
    else
	echo "Se han borrado $cont ficheros"
    fi
else
    echo "El directorio no existe"
fi

