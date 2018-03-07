#!/bin/bash

#Nombre: ejercicio1.sh

if $(test $# -eq 2); then
	if $(test -d $1); then
		#Encuentra los archivos que se encuentren en el directorio $1, que sean de tipo archivo plano (-type f) y con tamaño menor a $2 bytes
		find $1 -type f -size -$2c
	else
		echo "El primer parámetro debe ser un directorio"
	fi
else
	echo "Debe introducir dos parámetros"
fi