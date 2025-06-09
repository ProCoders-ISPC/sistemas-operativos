#!/bin/bash

clear
while true; do
    echo "===== GESTIÓN DE PROCESOS ====="
    echo "1. Ver procesos en ejecución"
    echo "2. Ver detalles de un proceso por PID"
    echo "3. Enviar señal SIGTERM a un proceso"
    echo "0. Volver al menú principal"
    echo "==============================="
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)  clear
			echo "Procesos en ejecución (simplificado):"
            ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -15
            read -p "Presione Enter para continuar..." 
            ;;
        2)  read -p "Ingrese el PID del proceso: " pid
            if [[ "$pid" =~ ^[0-9]+$ ]]; then
                if ps -p $pid > /dev/null 2>&1; then
                    echo "Detalles del proceso $pid:"
                    ps -p $pid -o pid,ppid,cmd,%mem,%cpu
                else
                    echo "PID no válido: No existe proceso con PID $pid"
                fi
            else
                echo "PID no válido: Debe ingresar un número"
            fi
            read -p "Presione Enter para continuar..."
            clear
            ;;
        3)  read -p "Ingrese el PID del proceso a terminar: " pid
            if [[ "$pid" =~ ^[0-9]+$ ]]; then
                if ps -p $pid > /dev/null 2>&1; then
                    read -p "¿Está seguro de que desea enviar SIGTERM al proceso $pid (s/n)? " confirm

                    if [[ "$confirm" =~ ^[Ss]$ ]]; then
                        if kill -15 $pid 2>/dev/null; then
                            echo "Proceso $pid terminado"
                        else
                            echo "Error al intentar terminar el proceso"
                        fi
                    else
                        echo "Operación cancelada"
                    fi
                else
                    echo "PID no válido: No existe proceso con PID $pid"
                fi
            else
                echo "PID no válido: Debe ingresar un número"
            fi
            read -p "Presione Enter para continuar..."
            clear
            ;;
        0)  echo "Volviendo al menú principal..."
            sleep 1
            clear
            exit 0
            break
            ;;
        *)  echo "Opción no válida."
            read -p "Presione Enter para continuar..."
            clear
            ;;
    esac
done