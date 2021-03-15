ERR_ARG=1
MAX=$1
CONTADOR=0
if ! [ $# -eq 1 ]
then
    echo "Error:Numero argumentos incorecto"
    echo "Usage:Tienes que poner un argumento con el maximo"
    exit $ERR_ARG
fi
while read -r line
    do
      ((CONTADOR++))
      echo "$CONTADOR: $line"
      
       if [ $CONTADOR -eq $MAX ]
       then 
	   exit 0
       fi
    done
