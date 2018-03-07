#!/bin/bash

#Nombre: ejercicio4.sh

if $(test $# -eq 0); then
	read -p "Introduzca el mes que desea ver: " mes

	case $mes in
		1|[Ee][Nn][Ee]) echo "Enero";;
		2|[Ff][Ee][Bb]) echo "Febrero";;
		3|[Mm][Aa][Rr]) echo "Marzo";;
		4|[Aa][Bb][Rr]) echo "Abril";;
		5|[Mm][Aa][Yy]) echo "Mayo";;
		6|[Jj][Uu][Nn]) echo "Junio";;
		7|[Jj][Uu][Ll]) echo "Julio";;
		8|[Aa][Gg][Oo]) echo "Agosto";;
		9|[Ss][Ee][Pp]) echo "Septiembre";;
		10|[Oo][Cc][Tt]) echo "Octubre";;
		11|[Nn][Oo][Vv]) echo "Noviembre";;
		12|[Dd][Ii][Cc]) echo "Diciembre";;
		*) echo "Introduzca una opción válida";;
	esac
else
	echo "Introduzca el número de parámetros correcto (0)"
fi