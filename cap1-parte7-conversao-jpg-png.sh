recursao(){
	cd $1
	for conteudo_do_arquivo in *
	do
		if [ -d $conteudo_do_arquivo ]
		then
			recursao $(find ~/Downloads -name $conteudo_do_arquivo)
		else
			local imagem=$(find ~/Downloads -name $conteudo_do_arquivo)
			local arquivo_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')
			convert $arquivo_sem_extensao.jpg $arquivo_sem_extensao.png
		fi
	done
}		


main(){ 
	cd ~/Downloads/IMAGENS-LIVROS
	for arquivo in *
	do
		if [ -d $arquivo ]
		then
			cd $arquivo
			for dentro_do_arquivo in *	
			do	
				if [ -d $(find ~/Downloads -name $dentro_do_arquivo) ]
				then	
					recursao $(find ~/Downloads -name $dentro_do_arquivo)
					
				else
					local arquivo_sem_extensao=$(ls $dentro_do_arquivo | awk -F. '{ print $1 }')
					convert $arquivo_sem_extensao.jpg $arquivo_sem_extensao.png
				fi
			done			
			cd ~/Downloads/IMAGENS-LIVROS
		else
			local imagem=$(find ~/Downloads -name $arquivo)
			local arquivo_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')
			convert $arquivo_sem_extensao.jpg $arquivo_sem_extensao.png
		fi
	done
}

main
