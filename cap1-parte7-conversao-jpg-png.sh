#!/bin/bash

recursao(){
	for arquivo in ~/Downloads/IMAGENS-LIVROS/*
	do
		if [ -d $arquivo ]
		then
			for arquivo_dentro_diretorio in $arquivo/*
			do
				arquivo_dentro_diretorio_sem_ext=$(ls $arquivo_dentro_diretorio | awk -F. '{ print $1 }')
				echo $arquivo_dentro_diretorio_sem_ext
				convert $arquivo_dentro_diretorio_sem_ext.jpg $arquivo_dentro_diretorio_sem_ext.png 
			done
		else
			recursao
		fi
	done
}

recursao
