#!/bin/bash




#CONTROL D'ERROR:
if [[ ${#} -eq 0 ]]
then
    echo "ERROR:Has d'introduir 1 numero com a minim"
    exit 1
fi

MAXIM=${1}

while [ ${#} -gt 0 ]; do 
    if [ $1 -gt $MAXIM ]; then
    #entram si el num seguent es mes fran que el maxim
    MAXIM=${1}
    fi
    shift
    
done

echo "El màxim és: ${MAXIM}"