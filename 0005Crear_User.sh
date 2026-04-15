#!/bin/bash
function usage(){
    echo "usage ${0}"
    echo
    echo "Has de ser root"
    echo "L'usuari no és pot repetir"
    exit 1 #Indica una errada
}

#Script per crear un usuari

#Primer comprovam si som root

if [[ ${UID} -ne 0 ]]
then
    usage
fi

read -p "Introdueix el nom complet: " COMMENTS

#Demanar el nom d'usuari
read -p "Introdueix el nom d'usuari: " USER_NAME

#Demanar el password
read -p "Introdueix el password: " PASSWORD

#Creariam l'usuari
useradd -m -c "${COMMENTS}" "${USER_NAME}"

#Control darrera comanda
if [[ $? -ne 0 ]]
then
    echo "Errada creant l'usuari"
    exit 1
fi

echo "Creant l'usuari ${USER_NAME}"




exit 0