#!/bin/bash


#Fazendo regex para IPV4
if [[ $1 =~ [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3} ]]
then
	cat ~/log/log-tomcat/* | grep "$1"
	if [ $? -ne 0 ]
  	then
		echo "O endereço IP não existe no arquivo"
	fi
else
	echo "O argumento passado não é  um endereço IP válido"
fi
	
