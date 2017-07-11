#!/bin/bash

converte_imagem(){
	local imagem_dentro_diretorio=$1
	local arquivo_sem_extensao=$(ls $imagem_dentro_diretorio | awk -F. '{ print $1 }')
	convert $arquivo_sem_extensao.jpg $arquivo_sem_extensao.png
}

varredura_diretorio(){
	local diretorio_passado_pelo_usuario=$1
	cd $diretorio_passado_pelo_usuario
	for conteudo_diretorio in *
	do
		if [ -d $(find $diretorio_passado_pelo_usuario -name $conteudo_diretorio) ]
		then
			varredura_diretorio $(find $diretorio_passado_pelo_usuario -name $conteudo_diretorio)
		else
			converte_imagem  $(find $diretorio_passado_pelo_usuario -name $conteudo_diretorio)
		fi
	done


}

varredura_diretorio $1
if [ $? -eq 0 ]
then
	echo "Conversão realizada com sucesso"
else
	echo "Houve uma falha no processo de conversão"
fi
