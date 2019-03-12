suma=0
cont=0
for i in $(cat precipitaciones.txt | awk '{print $2}'); do
    suma=$((suma+$i))
    cont=$((cont+1))
done
result=$(echo "scale=1; $suma/$cont" | bc)
echo $result
