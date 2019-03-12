DirName=$1
cont=0
DirRoute=`sudo find / -name "$DirName" | grep "$DirName"`
ls $DirRoute/*txt > tempFile
maxlines=`cat tempFile | wc -l`
for line in `seq 1 $maxlines`; do
    i=`cat tempFile | head -${line} | tail -1`
    rm $i
    cont=$((cont+1))
done
rm tempFile
echo "Se han borrado $cont ficheros"
