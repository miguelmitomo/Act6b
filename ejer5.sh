WindowsUsers=0
LinuxUsers=0
WindowsProc=0
LinuxProc=0
maxlineas=`cat listado.txt | wc -l`
for linea in `seq 1 $maxlineas`; do
    i=`cat listado.txt | head -${linea} | tail -1`
    OS=`echo $i | awk '{print $2}'`
    ProcessNum=`echo $i | awk '{print $3}'`
    if [ $OS = "Linux" ]; then
	LinuxUsers=$(($LinuxUsers+1))
	LinuxProc=$(($LinuxProc+$ProcessNum))
    elif [ $OS = "Windows" ]; then
	WindowsUsers=$(($WindowsUsers+1))
	WindowsProc=$(($WindowsProc+$ProcessNum))
    fi
done
echo "Linux-> $LinuxUsers $LinuxProc"
echo "Windows-> $WindowsUsers $WindowsProc"
