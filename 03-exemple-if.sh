#! /bin/bash
# @isx48067911 ASIX-M01
# Febrero 2021
# Primer ejemplo if
# $ prog edat
#-----------------------------------
if [ $# -ne 1 ]
then	
	echo "Error: nºargument incorecte"
	echo "Usage: $0 edat"
	exit 1
fi

# xixa
edat=$1

if [ $edat -ge 18 ]
then
	echo "Edat $edat major d'edat"
fi

exit 0
