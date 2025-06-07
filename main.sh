#!/bin/bash

while true; do
	clear
	echo "=====MonitoraSys====="
	echo "1. Gestión de procesos"
	echo "2. Gestión de memoria"
	echo "3. Gestión de disco"
	echo "0. salir"
	echo "================="
	read -p "seleccione una opción:" opcion 

	case $opcion in
		1) ./src/procesos.sh;;
		2) ./src/memoria.sh;;
		3) ./src/disco.sh;;
		0) echo "saliendo del toolkit..."; exit 0;;
		*) echo "Opción inválida. Presione Enter para continuar..."; read;;
	
	esac
done
