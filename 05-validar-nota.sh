#! /bin/bash
# @isx48067911 ASIX-M01
# Febrero 2021
# Indicar nota
# $ prog nota
#-----------------------------------
ERR_NARGS=1
ERR_VALOR=2

# 1) Validar argumentos
if [ $# -ne 1 ]
then
        echo "nº argumentos incorecto"
        echo "Usage: $0 nota"
	exit $ERR_NARGS
fi
# 2) Validar nota entre [0-10]
nota=$1
if ! [ $nota -ge 0 -a $nota -le 10 ]
then
	echo "Error: nota no valida"
	echo "nota valors [0,10]"
	exit $ERR_VALOR
fi

# 3) Validar si esta aprobado o suspendido
if [ $nota -lt 5 ]
then
	echo "Suspendido"
else
	echo "Aprobado"
fi
exit 0


