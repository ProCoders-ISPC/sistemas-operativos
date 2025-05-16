#!/bin/bash

while true; do
	clear
	echo "=====GESTION DE PROCESOS====="
	echo "1. Ver procesos en ejecuciòn"
	echo "2. Ver detalles de un proceso por PID"
	echo "3. Enviar señal SIGTERM a un proceso"
	echo "0. Volver al menù principal"
	echo "============================="
	read -p "seleccione una opción..." opcion

case $opcion in
	1) echo "Procesos en ejecución -simplificado-"
	ps -eo pid,ppid,cmd,%mem,%cpu -sort=%cpu | head -15
	read -p "presione Enter para continuar"
	;;
    2) read -p "ingrese el PID del proceso: " pid
	if ps -p $pid>/dev/null; then
		ps -p $pid -o pid,ppid,cmd,%mem,%cpu
	else
		echo "PID no válido"
	fi
	read -p "presione enter para continuar"
	;;
	3) read -p "ingrese el PID del proceso a terminar: " pid
	if ps -p $pid>/dev/null; then
		read -p "¿estás seguro de que deseas enviar SIGTERM al proceso $pid (s/n)?" confirm

		if [[ "$confirm" == "s" ]]; then
			kill -15 $pid && echo "proceso $pid terminado" || echo "Error al intenatr terminar el proceso"
		else
			echo "operacion cancelada"
		fi
	else
		echo "PID no válido"
	fi
	read -p "presione enter para continuar..."
	;;
