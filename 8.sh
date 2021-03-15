for users in $*
do
  grep "^$users:" /etc/passwd &> /dev/null
  if [ $? -eq 0 ]
  then
	  echo "$users"
  else
	  echo "$users" &> /dev/null
  fi
done
exit 0


