#!/bin/bash

rm -rf /var/www/[project-name]/dist_bak
if [ ! -d "/var/www/[project-name]/dist" ]; then
    mkdir /var/www/[project-name]/dist
fi
mv /var/www/[project-name]/dist /var/www/[project-name]/dist_bak
tar -zxf /var/www/[project-name]/dist.tar.gz -C /var/www/[project-name]

sudo /bin/kill -HUP `cat /var/run/nginx.pid`
# rm dist.tar.gz