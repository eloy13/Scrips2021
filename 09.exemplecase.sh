# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Exemple case
# -------------------------------------
#dl dt dc dj dv ds dm

case $1 in
	"dl"|"dt"|"dc"|"dj"|"dv")
	  echo "es laborable";;
	"ds"|"dm")
          echo "es festivo";;
	*)
          echo "es otra cosa";;
	 



exit 0
# 2) Decir si es vocal consonante o otra cosa
case $1 in
  [aeiou])
     echo "es una vocal";;
  [bcdfghjklmnpqrstvwxyz])
     echo "es una consonant";;
  *)
     echo "es otra cosa";;	  
esac

exit 0


# 1) exemple noms
case $1 in
  "pere"|"pau"|"joan")
       echo "es un nen";;
  "marta"|"anna"|"julia")
       echo "es una nena"
       ;;
  *)
       echo "indefinit";;
esac
exit 0
