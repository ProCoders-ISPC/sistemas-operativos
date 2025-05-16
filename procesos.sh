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