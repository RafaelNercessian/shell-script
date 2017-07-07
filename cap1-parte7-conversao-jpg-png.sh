#!/bin/bash

converte_imagem(){

	local arquivo_sem_extensao=$(ls $1 | awk -F. '{ print $1 }')
	convert $arquivo_sem_extensao.jpg $arquivo_sem_extensao.png

}

conteudo_subdiretorio(){
	cd $1
	for conteudo_subdiretorio in *
	do
		if [ -d $(find ~/Downloads/imagens-novos-livros -name $conteudo_subdiretorio) ]
		then
			conteudo_subdiretorio $(find ~/Downloads/imagens-novos-livros -name $conteudo_subdiretorio)
		else
			converte_imagem  $(find ~/Downloads/imagens-novos-livros -name $conteudo_subdiretorio)
		fi
	done


}

cd ~/Downloads/imagens-novos-livros
for arquivo in *
do
	if [ -d $arquivo ]
	then
		cd $arquivo
		for dentro_do_arquivo in *
		do
			if [ -d $(find ~/Downloads/imagens-novos-livros -name $dentro_do_arquivo) ]
			then
				conteudo_subdiretorio $(find ~/Downloads/imagens-novos-livros -name $dentro_do_arquivo)
			else
				converte_imagem $(find ~/Downloads/imagens-novos-livros -name $dentro_do_arquivo)
			fi
		done
		cd ~/Downloads/imagens-novos-livros
	else
		converte_imagem $(find ~/Downloads/imagens-novos-livros -name $arquivo)
	fi
done
