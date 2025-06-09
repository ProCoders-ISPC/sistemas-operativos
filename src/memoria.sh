#/bin/bash

while true; do
	clear
	echo "=====MONITORIEO DE MEMORIA====="
	echo "1. Ver uso de memoria RAM y SWAP"
	echo "2. Mostrar detalles de memeoria"
	echo "3. Ver estadísticas de memoria virtual"
	echo "0. Volver al menú principal"
	echo "=============================="
	read -p "Seleccione una opción: " opcion

	case $opcion in
		
		1)echo ""
		  echo "===USO DE MEMORIA RAM Y SWAP==="
		  free -h
		  echo ""
		  read -p "presione Enter para continuar...";;
		
		2)echo ""
          echo "===INFORMACIÓN DETALLADA DE MEMORIA==="
          echo "---Información desde /proc/meminfo---"
          echo ""
          echo "Memoria total:"
          grep "MemTotal\|MemFree\|MemAvailable" /proc/meminfo
          echo ""
          echo "Buffers y Cache: "
          grep "Buffers\|[Cc]ached\|SReclaimable\|SUnreclaim" /proc/meminfo
          echo ""
          echo "Memoria de kernel:"
          grep "Slab\|KernelStack\|PageTables" /proc/meminfo
          echo ""
          read -p "presione Enter para continuar...";;

		3)echo ""
		  echo "===ESTADISTICAS DE MEMORIA VIRTUAL==="
		  echo "---Estadísticas de memoria---"
		  vmstat -s | head -10
		  echo ""
		  read -p "presiona Enter para continuar...";;

		0)
		  echo "Volviendo al menú principal..."
		  sleep 1
		  clear
		  exit 0
		  break
		;;
		
		*)
		  echo "Opción no valida. Presione enter para continuar..."·
		  read -p "presione enter para continuar..."
		;;
	esac
done