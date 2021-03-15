while read -r line
do
	echo "$line"| cut -c1-50
done
