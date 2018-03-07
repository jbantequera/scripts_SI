#!/bin/bash

#Nombre: ejercicio7.sh

if $(test $# -eq 1); then
	for linea in $(cat /etc/passwd) 
	do 
		user=$(echo $linea|cut -d: -f1) 
		shell=$(echo $linea|cut -d: -f7)

		if $(test "$1" = "$shell"); then
			echo $user >> ejercicio7.txt
		fi
	done 

	cat ejercicio7.txt | sort
else
	echo "Introduzca el número de parámetros correcto (1)"
fi