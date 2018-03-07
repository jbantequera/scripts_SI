#!/bin/bash

#Nombre: ejercicio3.sh

if $(test $# -eq 0); then
	read -p "Introduzca una tecla o un número: " letra

	case $letra in
		[º0-9\'¡]) echo "Fila 1" ;;
		[qQwWeErRtTyYuUiIoOpP\`+) echo "Fila 2" ;;
		[aAsSdDfFgGhHjJkKlLñÑ\'çÇ]) echo "Fila 3" ;;
		[\<\>zZxXcCvVbBnNmM,.-]) echo "Fila 4" ;;
		*) echo "Otra linea" ;;
	esac
else
	echo "Introduzca el número de parámetros correcto (0)"
fi