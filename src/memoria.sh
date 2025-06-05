#/bin/bash

while true; do
	clear
	echo "=====MONITORIEO DE MEMORIA====="
	echo "1. Ver uso de memoria RAM y SWAP"
	echo "2. Mostrar detalles de memeoria"
	echo "3. Ver estadisticas de memoria virtual"
	echo "0. Volver al menù principal"
	echo "=============================="
	read -p "Seleccione una opciòn" opcion

	case $opcion in
		1)
		  echo ""
		  echo "===USO DE MEMORIA RAM Y SWAP==="
		  free -h
		  echo ""
		  read -p "presione Enter para continuar..."
		;;
		2)
		  echo ""
		  echo "===INFORMACIÒN DETALLADA DE MEMORIA==="
		  echo "---Informacion desde /proc/meminfo---"
		  echo ""






		*)
		  echo "Opciòn no valida. Presione enter para continuar..."·
		  read -p "presione enter para continuar..."
		;;
	esac
done