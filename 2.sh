ERR_ARG=1
CONTADOR=1
if [ $# -eq 0 ]
then
	echo "Tiene que tener algun argumento"
	echo "Usage: Tiene que tener algun argumento"
	exit $ERR_ARG
fi
for arg in $*
do
	echo "$CONTADOR : $arg"
	((CONTADOR++))
done
