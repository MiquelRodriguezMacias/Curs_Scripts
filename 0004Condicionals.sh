#!/bin/bash
read -p "Introduex un valor per X: " X

if [[ ${X} -lt 5 ]]
then
    echo "Has introduit un numero menor que 5"
fi