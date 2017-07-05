#!/bin/bash
converte_imagem(){
	cd ~/Downloads/imagens-livros
	if [ ! -d png ]
	then
		mkdir png
	fi
	for imagem in *.jpg
	do
		imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }') 
		convert $imagem_sem_extensao.jpg PNG/$imagem_sem_extensao.png
	done
}

converte_imagem
if [ $? -eq 0 ]
then
	echo "Conversão feita com sucesso"
else
	echo "Conversão falhou"
fi
