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


conteudo_subdiretorio ~/Downloads/imagens-novos-livros
if [ $? -eq 0 ]
then
	echo "Conversão realizada com sucesso"
else
	echo "Houve uma falha no processo de conversão"
fi
