#!/bin/sh
cd /jsmtproxy
pm2 start mtproxy.js -i max
pm2 logs
