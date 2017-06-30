#!/bin/bash

if [[ $1 =~ [0-9]?{2}[1-9].{3}[0-9][0-9]?{2} ]]
then
	cat ~/LOG/LOG-TOMCAT/* | grep "$1"
	if [ $? -ne 0 ]
  	then
		echo "O endereço IP não existe no arquivo"
	fi
else
	echo "O argumento passado não é  um endereço IP válido"
fi
	
