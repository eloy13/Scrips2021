# !/ in/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Hacer que crezca
# -------------------------------------

ERR_NARGS=1
ERR_FILE=2
ERR_DIREX=3

#Validar argumento
if [ $# -ne 2 ]
then
        echo "Error: nºarguments incorrecte"
        echo "Usage: $0 directori"
        exit $ERR_NARGS
fi
file=$1
dir=$2
if [ ! -e $1 ]
then
    echo "Error: El fichero no existe"
    echo "Usage : programa.sh file directorio_destino"
    exit $ERR_FILE
fi
if ! [ -d $2 ]
then
        echo "Error: $directori no es un directori existent"
        echo "Usage: $0 directori"
        exit $ERR_DIREX
    fi
cp $file $dir
exit 0
