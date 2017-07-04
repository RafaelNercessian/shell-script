#!/bin/bash
CAMINHO="/home/rafael/backups/Backup-S3-Amazon"
aws s3 sync s3://curso-shell-script-backup-mysql/$(date +%F) $CAMINHO/$(date +%F)
if [ $(ls - A $CAMINHO/$(date +%F)) -ne " " ]
then
	cd $CAMINHO/$(date +%F)/casadocodigo
	 for arquivo in *
                do
                        $(gunzip -c $arquivo| mysql -u root -D casadocodigo)
                done
        echo "Dados recuperados com sucesso"
else
	rm -r $CAMINHO/$(date +%F)
        aws s3 sync s3://curso-shell-script-backup-mysql/$(date -d '-1 day' '+%Y-%m-%d') $CAMINHO/$(date -d '-1 day' '+%Y-%m-%d')
        if [ $? -ne 0 ]
        then
                echo "O backup não pode ser realizado"
        else
		cd $CAMINHO/$(date -d '-1 day' '+%Y-%m-%d')/casadocodigo
                for arquivo in *
                        do
                                $(gunzip -c $arquivo| mysql -u root -D casadocodigo)
                        done
                echo "Dados recuperados com sucesso"
        fi

fi
