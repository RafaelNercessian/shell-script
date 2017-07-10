#!/bin/bash
processos_consomem_mais_memoria(){
	cd ~
	if [ ! -d log ]
	then
		mkdir log
	fi
	for pid in $(ps -eo pid --sort -size | head -n11 | grep '[0-9]')
	do
		cd ~/log
		nome_do_processo=$(ps -p $pid -o comm=)
		echo -n "$(date +%F,%H:%M:%S,)" >> $nome_do_processo.log
		tamanho=$(ps -o size --pid $pid | grep '[0-9]')
		echo "$(bc<<<"scale=2;$tamanho/1024") MB " >> $nome_do_processo.log
	done
}

processos_consomem_mais_memoria

if [ $? -eq 0 ]
then
	echo "Arquivos salvos com sucesso no diretório log"
else
	echo "Houve uma falha no processo"
fi
