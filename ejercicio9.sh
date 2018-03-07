#!/bin/bash

#Nombre: ejercicio9.sh

#Comprobamos que el número de argumentos es correcto
if $(test $# -eq 3); then
	dirname=$1
	num_files=$2
	basefilename=$3

	#Comprobamos que num_files está entre 1 y 99
	if $(test $num_files -gt 0) && $(test $num_files -lt 100); then
		if $(test ! -d $dirname); then #Si no existe el directorio lo creamos
			mkdir $dirname
			chmod u+rw $dirname #Damos permisos de escritura y lectura
		fi

		for ((narchivo = 1; narchivo <= $num_files; narchivo++)); do
			touch ./$dirname/$basefilename$narchivo
		done
	else
		echo "El número de archivos debe estar comprendido entre 1 y 99"
	fi
else
	echo "Debes introducir 3 parámetros"
fi