recursao(){

			for arquivo_dentro_diretorio in *
			do
				if [ ! -d $arquivo_dentro_diretorio ]
				then
					arquivo_dentro_diretorio_sem_ext=$(ls $arquivo_dentro_diretorio | awk -F. '{ print $1 }')
					if [ -z $arquivo_dentro_diretorio_sem_ext ]
					then
						cd ~/Downloads/IMAGENS-LIVROS/$1
						arquivo_dentro_diretorio_sem_ext=$(ls $arquivo_dentro_diretorio | awk -F. '{ print $1 }')
						convert $arquivo_dentro_diretorio_sem_ext.jpg $arquivo_dentro_diretorio_sem_ext.png
					else
						convert $arquivo_dentro_diretorio_sem_ext.jpg $arquivo_dentro_diretorio_sem_ext.png
					fi		
				else
				   cd ~/Downloads/IMAGENS-LIVROS/$1/$arquivo_dentro_diretorio
				   recursao $arquivo_dentro_diretorio
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
			recursao $arquivo
		cd ~/Downloads/IMAGENS-LIVROS/
		fi
	done
}

main
