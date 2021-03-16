contador=1
while read -r line
do
	echo "$contador : $line"
	((contador++))
done
