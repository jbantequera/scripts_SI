#!/bin/bash

#Nombre: cpback.sh

destino=CopiasSeguridad
fecha=$(date +"%Y%m%d")

if $(test $# -gt 0); then
	for i in $@; do
		if $(test -e $archivo); then
			if $(test ! -d ./$destino); then
				mkdir $destino
			fi

			tar -cvf "./$destino/copia$fecha.tar" $@
		else
			echo "El archivo o directorio no existe"
		fi
	done
else
	echo "Introduzca un directorio o una lista de archivos como argumento"
fi