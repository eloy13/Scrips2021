#! /bin/bash
# Ejemplos de funciones


function showuser(){
if [ $# -eq 0 ]
then
	echo "Numero de argumentos no valido"
	return 1
fi
user=$1
linea=$(echo $user| grep "^$user:" /etc/passwd)
if [ $? -ne 0 ]
then 
    echo "ERROR el usuario $1 no existe"
    return 0
fi
login=$(echo $linea | cut -d: -f1)
uid=$(echo $linea | cut -d: -f3)
gid=$(echo $linea | cut -d: -f4)
gecos=$(echo $linea |cut -d: -f5)
homedir=$(echo $linea | cut -d: -f6)
bash=$(echo $linea | cut -d: -f7)
gname=$(egrep "^[^:]*:[^:]*:$uid:" /etc/groups | cut -d: -f1)
echo "login: $login"
echo "uid: $uid"
echo "gid: $gid"
echo "gecos: $gecos"
echo "homedir: $homedir"
echo "bash: $bash"
echo "el group es: $gname"
}

function showGroup(){
if [ $# -eq 0 ]
then
        echo "Numero de argumentos no valido"
        return 1
fi
group=$1
linea=$(grep "^$group:" /etc/group)
if [ $? -ne 0 ]
then
    echo "ERROR no existe el grupo"
    return 2
fi  
    gid=$(echo $linea |cut -d: -f3)
    user=$(echo $linea |cut -d: -f4)
    echo "El grupo es $group"
    echo "La pasword es x"
    echo "El gid es $gid"
    echo "Los usuarios con este grupo como segundarios son $user"  
}
	

function suma(){
	echo "La suma es:"$(($1+$2))
	return 0
}
function dia(){
	echo date
	return 0
}
