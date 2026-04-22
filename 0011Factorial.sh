#!/bin/bash

#AL MANCO UN PARAMETRE
if [[ ${#} -eq 0 ]]
then
    echo "ERROR:Has d'introduir 1 numero"
    exit 1
fi
#EL FACTORIAL DE 0 ES 1
#EL FACTORIAL DE 1 ES 1
#EL FACTORIAL ES PER EXEMPLE 3!=3X2X1=6
#EL FACTORIAL ES PER EXEMPLE 10!=10X9X8X7X6X5X4X3X2X1=
N=$1
if [[ ${N} -gt 25 ]]
    then
        echo "ERROR:Ha de ser 25 o menor"
        exit 1
    fi
if [[ ${N} -lt 0 ]]
    then
        echo "ERROR: No es pot calcular factorial de numeros negatius"
        exit 1
    fi

FACTORIAL=1

while [ $N -gt 0 ]; do 
    #abans de restar, multiplicar aquesta N al factorial
        FACTORIAL=$((FACTORIAL*N))
        N=$((N-1))
done

echo "EL FACTORIAL DE ${1} VAL ${FACTORIAL}"