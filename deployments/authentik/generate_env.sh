#!/bin/bash
PWD=$(pwd)
FILE=$PWD/.env

if [[ -f "$FILE" ]]; then
	echo ".env already exists"
else
	echo "PG_PASS=$(pwgen -s 40 1)" >> .env
	echo "AUTHENTIK_SECRET_KEY=$(pwgen -s 50 1)" >> .env
	echo "AUTHENTIK_ERROR_REPORTING__ENABLED=true" >> .env	
fi
