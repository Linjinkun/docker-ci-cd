#!/bin/bash

# Set new passwords
GITEA_DB_PASSWD_NEW=$(openssl rand -base64 12)
MYSQL_ROOT_PASSWORD_NEW=$(openssl rand -base64 12)
MYSQL_PASSWORD_NEW=${MYSQL_ROOT_PASSWORD_NEW}

# Replace GITEA_DB_PASSWD variable with new password
sed -i "s/GITEA_DB_PASSWD=.*/GITEA_DB_PASSWD=$GITEA_DB_PASSWD_NEW/g" .env

# Replace MYSQL_ROOT_PASSWORD variable with new password
sed -i "s/MYSQL_ROOT_PASSWORD=.*/MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD_NEW/g" .env

# Replace MYSQL_PASSWORD variable with new password
sed -i "s/MYSQL_PASSWORD=.*/MYSQL_PASSWORD=$MYSQL_PASSWORD_NEW/g" .env
