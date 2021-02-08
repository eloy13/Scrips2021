#! /bin/bash
# @isx48067911 ASIX-M01
# Febrero 2021
# Primer ejemplo if
# $ prog edat
#-----------------------------------
if [ $# -ne l ];
	echo "Error: nºargument incorecte"
	echo "Usage: $0 edat"
	exit 1
fi

echo $1
exit 0
