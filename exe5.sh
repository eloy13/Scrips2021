# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Muestra los primeros 50 caracteres
# -------------------------------------
while read -r line
do
	echo $line | cut -c1-50
done
