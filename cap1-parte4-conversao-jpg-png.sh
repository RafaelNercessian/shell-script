#!/bin/bash
CAMINHO=~/Downloads/IMAGENS-LIVROS
for imagem in $@
do
	convert $CAMINHO/$imagem.jpg $CAMINHO/$imagem.png
done
