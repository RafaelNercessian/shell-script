#!/bin/bash

if [ ! -z $1 ]
then
	touch $1.sql
	chmod 777 $1.sql
	sudo mysqldump -u root casadocodigo > $1.sql
else
	read -p "É necessário escolher um nome de arquivo: " arquivo
	touch $arquivo.sql
	chmod 777 $arquivo.sql
	sudo mysqldump -u root casadocodigo > $arquivo.sql
fi
