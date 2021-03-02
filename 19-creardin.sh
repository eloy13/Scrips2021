#! /bin/bash
# @isx48067911 ASIX-M01
# Febrero 2021
# Validar si tiene uno o mas arg
#-----------------------------------
ERR_ARG=1
STATUS=0
if [ $# -eq 0 ]
then
        echo "ERROR:Tiene que tener almenos un argumento"
        echo "USAGE:Tiene que tener un argumeto o mas"
	exit $ERR_ARG
fi
for dir in $*
do
  mkdir -p $dir &> /dev/null 
  if [ $? -eq 0 ] 
  then
      echo $dir
  else
      echo "Error en crear: $dir" >> /dev/stderr
      STATUS=2
  fi
done
exit $STATUS
