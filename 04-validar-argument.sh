#! /bin/bash
# @isx48067911 ASIX-M01
# Febrero 2021
# Validar argument
# $ prog validar
#-----------------------------------

if [ $# -ne 2 ]
then
	echo "nº argumentos incorecto"
	exit 1
fi

echo "Los argumentos son $1 $2 "
exit 0

