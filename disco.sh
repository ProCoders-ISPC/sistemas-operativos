#!/bin/bash

while true; do
    clear
    echo "===== MONITOREO DE DISCO ====="
    echo "1. Ver espacio libre y utilizado (df -h)"
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
        0)
            break
            ;;
        *)
            echo "Opción no válida. Presione Enter para continuar..."
            read
            ;;
    esac
done
