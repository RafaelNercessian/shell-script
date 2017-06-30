#!/bin/bash
converte_imagem(){
	CAMINHO=~/Downloads/IMAGENS-LIVROS
	for imagem in $@
	do
		convert $CAMINHO/$imagem.jpg $CAMINHO/$imagem.png
	done
}

converte_imagem $@
if [ $? -eq 0 ]
then
	echo "Conversão feita com sucesso"
else
	echo "Conversão falhou"
fi
