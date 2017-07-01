#!/bin/bash

aws s3 sync s3://curso-shell-script-backup-mysql/$(date +%F) ~/backups/Backup-S3-Amazon/$(date +%F)
if [ $? -eq 0 ]
then
	cd ~/backups/Backup-S3-Amazon/$(date +%F)/casadocodigo
	 for arquivo in *
                do
                        $(gunzip -c $arquivo| mysql -u root -D casadocodigo)
                done
        echo "Dados recuperados com sucesso"
else
        aws s3 sync s3://curso-shell-script-backup-mysql/$(date -d '-1 day' '+%Y-%m-%d') ~/backups/Backup-S3-Amazon/$(date -d '-1 day' '+%Y-%m-%d')
        if [ $? -ne 0 ]
        then
                echo "O backup não pode ser realizado"
        else
		cd ~/backups/Backup-S3-Amazon/$(date -d '-1 day' '+%Y-%m-%d')/casadocodigo
                for arquivo in *
                        do
                                $(gunzip -c $arquivo| mysql -u root -D casadocodigo)
                        done
                echo "Dados recuperados com sucesso"
        fi

fi
