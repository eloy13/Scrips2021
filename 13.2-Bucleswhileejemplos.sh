# !/ in/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Ejemplos While
# -------------------------------------




ERR_NARGS=1
ERR_DIRE=2

# 1) Validar argumentos
if [ $# -ne 1 ]
then
    echo "nº argumentos incorecto"
    echo "Usage: $0 nota"
    exit $ERR_NARGS
fi
if [ ! -d $1 ]
then
    echo "no es un directorio"
    echo "Usage: $0 tiene que ser un directorio"
    exit $ERR_DIRE
fi
dir=$1
num=1
llista_elements=$(ls $dir)
for fit in $llista_elements
do
  echo " $num: $fit "
  ((num++))  




numero=1
while read -r line
do
  echo " $num: $line " | tr '[a-z]' '[A-Z]' 
  ((numero++))
done
exit 0









numero=1
read -r line
 while [ "$line" != "fi" ]
 do
 echo "$numero: $line"
 numero=$((numero+1))
 read -r line
done
exit 0

		    
numero=1
while read -r line
do
  echo "$numero: $line"
  numero=$((numero+1))
done
exit 0



num=1
while [ $# -gt 0 ]
do
  echo "$num: $1, $#,  $*"
  num=$((num+1))
  shift
done
exit 0
