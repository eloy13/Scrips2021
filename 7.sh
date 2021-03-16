while read -r line
do
  num=$(echo "$line" | wc -c)
  if [ $num -gt 60 ]
  then
	  echo $line
  fi
done
