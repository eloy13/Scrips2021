max=50
while read -r line
do
  echo $line | egrep '^.{,49}$'
done
exit 0
