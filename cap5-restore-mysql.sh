#!/bin/bash

if [ ! -z $1 ]
then
	sudo mysql -u root casadocodigo < $1
else
	read -p "É necessário escolher um arquivo para fazer o restore: " arquivo
	sudo mysql -u root casadocodigo < $arquivo
fi
