#!/bin/bash

while true; do
    clear
    echo "===== MONITOREO DE DISCO ====="
    echo "1. Ver espacio libre y utilizado (df -h)"
    echo "2. Ver tamaño de un directorio o archivo (du -sh <ruta>)"
    echo "0. Volver al menú principal"
    echo "==============================="
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            echo "\n=== ESPACIO EN DISCO (df -h) ==="
            df -h
            echo ""
            read -p "Presione Enter para continuar..."
            ;;
        2)
            read -p "Ingrese la ruta del directorio o archivo: " ruta
            if [ -e "$ruta" ]; then
                du -sh "$ruta"
            else
                echo "La ruta ingresada no existe."
            fi
            read -p "Presione Enter para continuar..."
            ;;
        0)
            break
            ;;
        *)
            echo "Opción no válida. Presione Enter para continuar..."
            read
            ;;
    esac
done
