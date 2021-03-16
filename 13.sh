STATUS=0
for matri in $*
do
  echo $matri | egrep '[0-9]{4}-[A-Z]{3}' &> /dev/null
  if [ $? -eq 0 ]
  then
      echo $matri
  else
      echo "ERROR matricula $matri no es valida " >> /dev/stderr
      ((STATUS++)) 
  fi
	
done
exit $STATUS
