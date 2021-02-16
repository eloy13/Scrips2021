# !/ in/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Decir el numero de dias del mes
# -------------------------------------
ERR_NARGS=1
ERR_MES12=2
#Validar argumento
if [ $# -ne 1 ]
then
       	echo "Error: nºarguments incorrecte"
	echo "Usage: $0 directori"
        exit $ERR_NARGS
fi
mes=$1
if ! [ $mes -ge 1 -a $mes -le 12 ]
then
	echo "Error: no existe ese mes"
	echo "Usage: $0 tiene que ser un numero entre 1 y 12"
	exit $ERR_MES12
fi
case $mes in
	"1"|"3"|"5"|"7"|"8"|"10"|"12")
		echo "$mes es un mes de 31 dias";;
	"4"|"6"|"9"|"11")
	        echo "$mes es un mes de 30 dias";;
	"2")
		echo "$mes es un mes de 28 dias";;
	*)
		echo "$mes no es un mes";;
esac
exit 0
