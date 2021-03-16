ERR_ARG=1
if [ $# -eq 0 ]
then
	echo "Error: Numero argumentos incorector"
	echo "Usage: Tiene que tener algun argumento"
	exit $ERR_ARG
fi
for meses in $*
do
	case $meses in
		    "1"|"3"|"5"|"7"|"8"|"10"|"12")
			    echo "El mes tiene 31 dias";;
	            "2")
			    echo "El mes tiene 28 dias";;
	            "4"|"6"|"9"|"11")
			    echo "El mes tiene 30 dias";;
	            *)
			    echo "Tiene que ser un numero entre 1 y 12";;
        esac
	
done
exit 0

