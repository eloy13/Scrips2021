# !/ in/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Muestra los argumentos recividos linea a linea numerandolos
# -------------------------------------
#Programa
numero=1
for argumento in $*
do
	echo " $numero: $argumento "
	((numero++))
done
exit 0

