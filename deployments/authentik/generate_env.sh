#!/bin/bash
PWD=$(pwd)
FILE=$PWD/.env

if [[ -f "$FILE" ]]; then
	echo ".env already exists"
else
	echo "PG_PASS=$(openssl rand -hex 20)" >> $FILE
    echo "AUTHENTIK_SECRET_KEY=$(openssl rand -hex 25)" >> $FILE
    echo "AUTHENTIK_ERROR_REPORTING__ENABLED=true" >> $FILE	
fi
