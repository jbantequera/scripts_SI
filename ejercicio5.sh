#!/bin/bash

#Nombre: ejercicio5.sh

if $(test $# -eq 0); then
	read -p "Introduzca un número: " numero

	while $(test $numero -lt 1) || $(test $numero -gt 10);
	do
		read -p "Introduzca un número: " numero
	done
else
	echo "Introduzca el número de parámetros correcto (0)"
fi