ERR_ARG=1	
NUM=0
NUM_MAX=$1
if ! [ $# -eq 1 ]
then
     echo "Error numero de arguementos incorecto"
     echo "Usage: Tiene que tener un solo argumento"
     exit $ERR_ARG
fi
while [ $NUM -le $NUM_MAX ]
do
  echo "$NUM"
  ((NUM++))
done
exit 0
