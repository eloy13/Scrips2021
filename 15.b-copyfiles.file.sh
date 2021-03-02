# !/ in/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Hacer que crezca
# -------------------------------------

ERR_NARGS=1
ERR_FILE=2
ERR_DIREX=3

#Validar argumento
if [ $# -ne 4 ]
then
        echo "Error: nºarguments incorrecte"
        echo "Usage: $0 directori"
        exit $ERR_NARGS
fi
echo $#
echo $*
echo $* | cut -d' ' -f$#
echo $* | sed -r 's/^.*//g'
exit 0



