#!/bin/bash


SUMA=0
while [ ${#} -gt 0 ]; do 
     SUMA=$((SUMA+$1))
    shift

done

echo "La suma val $SUMA"