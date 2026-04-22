#!/bin/bash

# Generar nombre aleatori entre 1 i 100
NUMERO=$((RANDOM % 100 + 1))

INTENTS=5

echo "Endevina el numero entre 1 i 100. Tens $INTENTS intents."

for ((i=1; i<=INTENTS; i++))
do
    echo -n "Intent $i: "
    read resposta

    if [ "$resposta" -eq "$NUMERO" ]; then
        echo "Molt bé! Has encertat el numero!"
        exit 0
    elif [ "$resposta" -lt "$NUMERO" ]; then
        echo "El numero és més gran."
    else
        echo "El numero és més petit."
    fi
done

echo "Ja no tens mes intents... El numero era: $NUMERO"