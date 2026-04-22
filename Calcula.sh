#!/bin/bash

# Comprovar que hi ha almenys 1 paràmetre (l'operació)
if [ $# -lt 1 ]; then
    echo "Ús: $0 {suma|mitjana|maxim|parells_senars} [nombres...]"
    exit 1
fi

OPERACIO=$1
shift  # Eliminem el primer paràmetre (l'operació)

case $OPERACIO in

    suma)
        SUMA=0
        while [ $# -gt 0 ]; do
            SUMA=$((SUMA + $1))
            shift
        done
        echo "La suma total és: $SUMA"
        ;;

    mitjana)
        TOTAL=$#
        if [ $TOTAL -eq 0 ]; then
            echo "Error: cal passar nombres"
            exit 1
        fi

        SUMA=0
        while [ $# -gt 0 ]; do
            SUMA=$((SUMA + $1))
            shift
        done

        MITJANA=$((SUMA / TOTAL))
        echo "La mitjana de $TOTAL valors és: $MITJANA"
        ;;

    maxim)
        if [ $# -eq 0 ]; then
            echo "Error: cal passar nombres"
            exit 1
        fi

        MAX=$1
        shift

        while [ $# -gt 0 ]; do
            if [ $1 -gt $MAX ]; then
                MAX=$1
            fi
            shift
        done

        echo "El màxim és: $MAX"
        ;;

    parells_senars)
        PARELLS=0
        SENARS=0

        while [ $# -gt 0 ]; do
            if [ $(( $1 % 2 )) -eq 0 ]; then
                PARELLS=$((PARELLS + 1))
            else
                SENARS=$((SENARS + 1))
            fi
            shift
        done

        echo "Parells: $PARELLS"
        echo "Senars: $SENARS"
        ;;

    *)
        echo "Operació no vàlida"
        echo "Ús: $0 {suma|mitjana|maxim|parells_senars} [nombres...]"
        exit 1
        ;;
esac