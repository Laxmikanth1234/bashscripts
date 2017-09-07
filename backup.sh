#!/bin/bash

LOG_DIR='logs'	
BACKUP_DIR='logs_backup'

mkdir -p $BACKUP_DIR

for i in `cat backup_files.txt`
do
if [ -f $LOG_DIR/$i ]
then
   echo "copying $i to backuplogs"
   cp $LOG_DIR/$i $BACKUP_DIR
else
   echo "$i does not exist"
fi	
done

tar -czvf logs_backup.tgz logs_backup
