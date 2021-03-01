# !/ in/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Muestra la entrada estandar numerando linea a linea
# -------------------------------------
#Programa
numero=1
while read -r line
do
 echo " $numero: $line " 
 ((numero++))
done
exit 0
