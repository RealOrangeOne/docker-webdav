#!/usr/bin/env sh

set -e

# Update nginx user id
deluser nginx
adduser -u $PUID -D nginx

exec nginx -g "daemon off;"
