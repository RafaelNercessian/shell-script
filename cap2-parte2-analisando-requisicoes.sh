#!/bin/bash
read -p "Escolha A requisição HTTP para filtrar (GET/POST/PUT/DELETE): " requisicao
letra_maiuscula=$(echo $requisicao | awk '{ print toupper($1) }')
case $letra_maiuscula in
    GET)
            cat ~/LOG/LOG-TOMCAT/* | grep "GET"
            ;;
    POST)
            cat ~/LOG/LOG-TOMCAT/* | grep "POST"
            ;;
    PUT)
            cat ~/LOG/LOG-TOMCAT/* | grep "PUT"
            ;;
    DELETE)
            cat ~/LOG/LOG-TOMCAT/* | grep "DELETE"
            ;;
    *)
	   echo "O comando não é válido"
esac
