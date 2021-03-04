# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Di dias de la semana y di si son festivos o laborales el total
# -------------------------------------
ERR_ARG=1
festivo=0
laborable=0
#Validar Numero Argumentos
if [ $# -eq 0 ]
then
        echo "numero de argumentos incorecto"
        echo "Usage: Tiene que ser almenos un argumento"
        exit $ERR_ARG
fi
for dias in $*
do
	case $dias in
	  "lunes"|"martes"|"miercoles"|"jueves"|"viernes")
		  ((laborable++));;
	  "sabado"|"domingo")
		  ((festivo++));;
	  *)
            echo "error no es un dia de la semana $dias" >> /dev/stderr;;
       esac
done
echo "los dias laborables son: $laborable"
echo "los dias festivos son: $festivo"
exit 0
