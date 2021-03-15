while read -r line
do
  echo $line | sed -r 's/^(.)[^ ]*/\1./g'
done
