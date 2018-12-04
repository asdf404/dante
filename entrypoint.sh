#!/bin/sh

set -e

envsubst '$DANTE_USER,$DANTE_PASSWORD' < /opt/sockd.tpl > /etc/sockd.conf

# getent passwd "$DANTE_USER" > /dev/null 2>/dev/null
useradd "$DANTE_USER"
echo "$DANTE_USER:$DANTE_PASSWORD" | chpasswd
# if [ $? != 0 ]; then
# fi

exec "$@"
