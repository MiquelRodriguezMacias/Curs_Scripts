#!/bin/bash

#Mostram diverses maneres de generar passwords

PASSWORD=${RANDOM}
echo "Password com un numero aleatori: ${PASSWORD}"

PASSWORD=${RANDOM}${RANDOM}${RANDOM}
echo "Password com a tres numeros aleatoris: ${PASSWORD}"

#Password amb sha256sum
PASSWORD=$(date +%s%N | sha256sum | head -c10)
echo "${PASSWORD}"