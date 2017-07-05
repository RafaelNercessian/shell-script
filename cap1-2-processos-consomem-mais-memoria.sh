#!/bin/bash
processos_consomem_mais_memoria(){
	if [ ! -d log ]
	then
		cd ~
		mkdir log
	fi
	for pid in $(ps -eo pid --sort -size | head -n11 | grep '[0-9]')
	do
		nome_do_processo=$(ps -p $pid -o comm=)
		echo -n "$(date +%Y%m%d,%H:%M:%S,)" >> $nome_do_processo.log
		tamanho=$(ps -o size --pid $pid | grep '[0-9]')
		echo "$(bc<<<"scale=2;$tamanho/1024") MB " >> $nome_do_processo.log
		cp $nome_do_processo.log ~/LOG/$nome_do_processo.log
		rm *.log
	done
}

processos_consomem_mais_memoria

if [ $? -eq 0 ]
then
	echo "Arquivos salvos com sucesso no diretório log"
else
	echo "Houve uma falha no processo"
fi
