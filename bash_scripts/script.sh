#! /bin/bash

set -e

set -o pipefail

CURRENT_DATE=$(date +"%Y-%m-%d")

SOURCE_DIR="/home/sergio/linux_p2"

BACKUP_DIR="/home/sergio/linux_p2/backup"

OLD_BACKUP_DIR="/home/sergio/linux_p2/old_backup"

LOG_DIR="/home/sergio/linux_p2/log"

INFO_LOG_FILE="$LOG_DIR/backup.log"

ERROR_LOG_FILE="$LOG_DIR/err_backup.log"


mkdir -p $LOG_DIR

mkdir -p $BACKUP_DIR

mkdir -p $OLD_BACKUP_DIR


log_info() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") [INFO] $1"
}

log_error() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") [ERROR] $1" >&2
}

log_info "Backup begin"

cd "$SOURCE_DIR" || { log_error "Unable to navigate to the $SOURCE_DIR directory"; exit 1; }


find $BACKUP_DIR -maxdepth 1 -mmin +3 -type f -exec mv "{}" $OLD_BACKUP_DIR \;


for file in *.txt; do

echo "$file"

    if [ -f "$file" ]; then

        archive_name="${file}_${CURRENT_DATE}.tar.gz"

        tar czf "$archive_name" "$file" || { log_error "Error while creating archive."; exit 1; }

    fi

mv $SOURCE_DIR/$archive_name $BACKUP_DIR

done


log_info "Backup completed successfully."
