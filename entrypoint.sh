#!/usr/bin/env sh
set -eu
echo "Substituting vars";
echo $API_HOST;
envsubst '${API_HOST}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

/etc/init.d/nginx-exporter start 
nginx -g 'daemon off;'