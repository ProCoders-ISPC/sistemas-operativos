#!/bin/bash

while true; do
	clear
	echo "=====MonitoraSys====="
	echo "1. Gestion de procesos"
	echo "2. Gestion de memoria"
	echo "3. Gestion de disco"
	echo "0. salir"
	echo "================="
	read -p "seleccione una opciòn:" opcion 

	case $opcion in
		1) src/./procesos.sh;;
		2) ./src/memoria.sh;;
		3) src/.disco.sh;;
		0) echo "saliendo del toolkit..."; exit 0;;
		*) echo "Opciòn inválida. Presione Enter para continuar..."; read;;
	
	esac
done
