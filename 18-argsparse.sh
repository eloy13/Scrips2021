# !/ in/bash
# @edt ASIX M01-ISO
# Febrer 2021
# [-a file -b -c -d num -e ] arg[...]
# -------------------------------------
opciones=''
argumento=''
num=''
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
            num=$2
	    shift;;
          *)
	    argumento="$argumento $1";;
  esac
  shift 
done
echo "Opciones:"$opciones
echo "Argumentos:"$argumento
echo "File:"$file
echo "Num:"$num
exit 0
