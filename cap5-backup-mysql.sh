#!/bin/bash
BACKUP_DIR="/home/rafael/backups/sql"
BACKUP_DATA=$(date +%F)

#Fazendo backup do banco casadocodigo
BACKUP_DB=$(mysql -u root -e "show databases;"| grep -i "casadocodigo")
DB_DIR="$BACKUP_DIR/$BACKUP_DATA/$BACKUP_DB"
TABLES=$(mysql -u root -D $BACKUP_DB -e "show tables;"| grep -v "Tables_in_casadocodigo")
mkdir -p $DB_DIR
for table in $TABLES
	do
		mysqldump -u root --add-drop-table $BACKUP_DB $table | gzip --best > $DB_DIR/$table.gz
		aws s3 sync $BACKUP_DIR/$BACKUP_DATE/$db s3://curso-shell-script-backup-mysql/
	done


