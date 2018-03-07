#!/bin/bash

#Nombre: ejercicio2.sh

if $(test $# -eq 1); then
	if $(test -d $1); then
		for archivo in $(ls $1);
			do
				if $(test -f $1/$archivo); then
					echo "$archivo -> Archivo Regular"
				elif $(test -d $1/$archivo); then
					echo "$archivo -> Directorio"
				elif $(test -L $1/$archivo); then
					echo "$archivo -> Enlace Simbólico"
				fi
			done
	else
		echo Debes introducir un directorio
	fi
else
	echo Debes introducir un único parámetro
fi