#!/bin/bash

function aide ()
# affiche l'aide de la commande (si $1 = "-h")
{
	echo "usage : testnum v1 v2 ... vn"
	echo "verifie que chaque parametre est un entier"
	echo "affiche chaque valeur entiere sur la sortie standard"
	echo "affiche un message d'erreur pour chaque valeur incorrecte (sur sortie erreur)"
	return 0
}


echo "saisissez des nombres:"
read -r liste

if [ "$#" == "0" -o -n $liste ]
then 				#cas quand pas de param
	echo "liste vide"
	aide()
  
else

for $liste in $*
max="0";		#initialise max à la première valeur lue
do
	for (i=1 ; i < $#; i++) ;      #boucle for pour lire les suivants et comparer
			if [ $i -gt max ]  ;
				then max=$i
			
			fi
		let "$i+=1"
	echo "le maximum est: $max"
done
fi

