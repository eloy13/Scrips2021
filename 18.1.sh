# !/ in/bash
# @edt ASIX M01-ISO
# Febrer 2021
# [-a file -b -c -d num -e ] arg[...]
# -------------------------------------
opciones=''
argumento=''
min=''
max=''
file=''
while [ -n "$1" ]
do
  case $1 in
          -[bce])
            opciones="$opciones $1";;
          -a)
            file=$2
            shift;;
          -d)
            min=$2
	    max=$3
            shift
	    shift;;
          *)
            argumento="$argumento $1";;
  esac
  shift
done
echo "Opciones:"$opciones
echo "Argumentos:"$argumento
echo "File:"$file
echo "Num:"$min $max
exit 0
~                            
