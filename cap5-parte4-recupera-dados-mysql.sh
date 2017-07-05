#!/bin/bash
CAMINHO="/home/rafael/backups/Backup-S3-Amazon"
aws s3 sync s3://curso-shell-script-backup-mysql/$(date +%F) $CAMINHO/$(date +%F)
if [ ! -z $(ls $CAMINHO/$(date +%F)) ]
then
	cd $CAMINHO/$(date +%F)/casadocodigo
	 for arquivo in *
                do
                        $(gunzip -c $arquivo| mysql -u root -D casadocodigo)
                done
        echo "Dados recuperados com sucesso"
else
        echo "Os dados não foram recuperados"
fi
