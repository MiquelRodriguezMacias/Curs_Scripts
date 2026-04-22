#!/bin/bash

#inicialitzam a zero
SUMA=0
#guardar la quantitat de números
QUANTS=${#}

#CONTROL D'ERROR:
if [[ ${#} -eq 0 ]]
then
    echo "ERROR:Has d'introduir 1 numero com a minim"
    exit 1
fi



while [ ${#} -gt 0 ]; do 
     SUMA=$((SUMA+$1))
    shift
    
done

#aqui la suma conte la suma dels parametres
#la mitjana és dividir la suma entre el número de paràmetres
MITJANA=$((SUMA/QUANTS))
echo "La mitjana val ${MITJANA}"