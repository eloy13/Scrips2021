# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
# llistar el directorio si existe
#  $ prog dir
# -------------------------------------
ERR_NARGS=1
ERR_DIREX=2

#Validar argumento
if [ $# -ne 1 ]
then
	    echo "Error: nºarguments incorrecte"
	        echo "Usage: $0 directori"
		    exit $ERR_NARGS
fi
#Validar si existe el directorio
ayuda='-h'
directori=$1
if ! [ -d $directori ]
then
    if ! [ $1 = $ayuda ]
    then
        echo "Error: $directori no es un directori existent"
	echo "Usage: $0 directori"
	exit $ERR_DIREX
    fi
    echo "Tienes que poner un directorio"
    exit 0
fi

ls $directori
exit 0

