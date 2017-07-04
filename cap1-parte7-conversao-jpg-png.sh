#!/bin/bash

recursao(){
	cd ~/Downloads/IMAGENS-LIVROS/
	for arquivo in *
	do
		if [ -d $arquivo ]
		then
			cd $arquivo
			if [ ! -d "png" ]
			then
				mkdir png
			fi
			for arquivo_dentro_diretorio in *.jpg
			do
				arquivo_dentro_diretorio_sem_ext=$(ls $arquivo_dentro_diretorio | awk -F. '{ print $1 }')
				convert $arquivo_dentro_diretorio_sem_ext.jpg png/$arquivo_dentro_diretorio_sem_ext.png
			done
		cd ~/Downloads/IMAGENS-LIVROS/
		else
			recursao
		fi
	done
}

recursao
