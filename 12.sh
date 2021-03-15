contador=0
for letras in $*
do
	echo $letras | egrep '.{3,}' &> /dev/null
        if [ $? -eq 0 ]
	then
		((contador++))
        fi
done
echo $contador
exit 0
