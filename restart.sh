#!/bin/bash

sudo /usr/local/openresty/nginx/sbin/nginx -c /apps/ip_locate/nginx.conf -p /apps/ip_locate -s reload
