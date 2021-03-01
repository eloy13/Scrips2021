# !/ in/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Pon un contador hasta el numero indicado
# -------------------------------------
ERR_ARG=1
#Validar Numero Argumentos
if [ $# -ne 1 ]
then
	echo "numero de argumentos incorecto"
	echo "Usage: Tiene que ser un solo argumento"
	exit $ERR_ARG
fi
NUM=0
NUM_MAX=$1
while [ $NUM -le $NUM_MAX ]
do
  echo "$NUM"
  ((NUM++))
done
exit 0
