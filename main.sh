#!/bin/bash

while true; do
	clear
	echo "=====MonitoraSys====="
	echo "1. Gestion de procesos"
	echo "0. salir"
	echo "================="
	read -p "seleccione una opciòn:" opcion 

	case $opcion in
		1) ./procesos.sh;;
		0) echo "saliendo del toolkit..."; exit 0;;
		*) echo "Opciòn inválida. Presione Enter para continuar..."; read;;
	
	esac
done
