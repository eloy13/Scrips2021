# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
# El programa tiene que recibir un numero de mes o varios y decir cuantos dias tiene el mes
# -------------------------------------
ERR_ARG=1
#ERROR si no tiene ningun argumento
if [ $# -lt 1 ]
then
        echo "nº argumentos incorecto"
        echo "Usage: Tiene que tener un argumento"
	exit $ERR_ARG
#Programa
for meses in $*
do
  case $meses in 
	"1"|"3"|"5"|"7"|"8"|"10"|"12")
	echo "31";;
        "4"|"6"|"9"|"11")
	echo "30" ;;
        "2")
	echo "28";;
        *)
	echo "Tiene que ser un numero entre 1 y 12";; >> /dev/stderr
  esac
done
exit 0 
