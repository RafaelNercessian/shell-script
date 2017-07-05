#!/bin/bash
CAMINHO=~/Downloads/imagens-livros
for imagem in $@
do
	convert $CAMINHO/$imagem.jpg $CAMINHO/$imagem.png
done
