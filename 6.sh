ERR_ARG=1
laborable=0
festivo=0
if [ $# -eq 0 ]
then
	echo "Error numero argumentos"
	echo "Usage: Tiene que tener almenos un argumento"
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
			echo "Error $dias no es un dia valido" >> /dev/stderr
	esac
done
echo "Dias laborables $laborable"
echo "Dias festivos $festivo"
exit 0

