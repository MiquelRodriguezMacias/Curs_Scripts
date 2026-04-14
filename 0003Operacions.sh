#!/bin/bash

#aquest script el que ens mostra es a com realitzar les principals operacions aritmetiques

read -p "Introdueix el valor de X: " X
read -p "Introdueix el valor de Y: " Y

echo "Has introduit ${X} i ${Y}"
SUMA=$((X+Y))
echo "${X}+${Y}=${SUMA}"
RESTA=$((X-Y))
echo "${X}-${Y}=${RESTA}"
MULTIPLICACIO=$((X*Y))
echo "${X}*${Y}=${MULTIPLICACIO}"

if [[ ${Y} -le 0 ]]
then
    echo "Error: No es pot dividir entre 0"
    exit 1
fi

DIVISIO=$(echo "scale=2; ${X}/${Y}" | bc)
echo "${X}/${Y}=${DIVISIO}"