#!/bin/bash

if [ ! -z $1 ]
then
	letra_maiuscula=$(echo $1 | awk '{ print toupper($1) }')
else
	read -p "Escolha A requisição HTTP para filtrar (GET/POST/PUT/DELETE): " requisicao
	letra_maiuscula=$(echo $requisicao | awk '{ print toupper($1) }')
fi
case $letra_maiuscula in
    GET)
            cat ~/log/log-tomcat/* | grep "GET"
            ;;
    POST)
            cat ~/log/log-tomcat/* | grep "POST"
            ;;
    PUT)
            cat ~/log/log-tomcat/* | grep "PUT"
            ;;
    DELETE)
            cat ~/log/log-tomcat/* | grep "DELETE"
            ;;
    *)
	   echo "O comando não é válido"
esac
