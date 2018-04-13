#!/bin/bash

MONGO_DATABASE="price_database"
APP_NAME="cratonomics"

MONGO_HOST="127.0.0.1"
MONGO_PORT="27017"
TIMESTAMP=`date +%F-%H%M`
MONGODUMP_PATH="/usr/bin/mongodump"
BACKUPS_DIR="/mnt/drive1/mongobackups/$APP_NAME"
BACKUP_NAME="$APP_NAME-$TIMESTAMP"

ARCHIVE_PATH="$BACKUPS_DIR/$BACKUP_NAME.gz"
$MONGODUMP_PATH --db $MONGO_DATABASE --archive=$ARCHIVE_PATH --gzip
