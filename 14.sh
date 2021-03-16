contador=1
while read -r line
do
  echo $contador: "$line" | tr '[a-z]' '[A-Z]'
  ((contador++))
done
