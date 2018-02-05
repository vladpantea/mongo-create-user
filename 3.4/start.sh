#!/bin/bash

set -e

MONGO_HOST=${MONGO_HOST:-"127.0.0.1"}
MONGO_PORT=${MONGO_PORT:-"27017"}
MONGO_AUTH_DB=${MONGO_AUTH_DB:-"admin"}
MONGO_AUTH_USER=${MONGO_AUTH_USER:-"johndoe"}
MONGO_AUTH_PASSWORD=${MONGO_AUTH_PASSWORD:-"secret"}
MONGO_DB=${MONGO_DB:-"test"}
MONGO_USERNAME=${MONGO_USERNAME:-"user"}
MONGO_PWD=${MONGO_PWD:-"password"}
MONGO_ROLE=${MONGO_ROLE:-"read"}

echo "Start user creation job..."
mongo $MONGO_HOST:$MONGO_PORT/$MONGO_AUTH_DB --username $MONGO_AUTH_USER --password $MONGO_AUTH_PASSWORD --eval "db.getSiblingDB('$MONGO_DB').createUser({user:'$MONGO_USERNAME', pwd:'$MONGO_PWD', roles:[{role:'$MONGO_ROLE',db:'$MONGO_DB'}]});quit();"
echo "User creation done!"
