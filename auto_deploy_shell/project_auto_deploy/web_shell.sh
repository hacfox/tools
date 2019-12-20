#!/bin/bash
echo 'packing dist'
tar -zcf dist.tar.gz ./dist
echo 'uploading'
scp dist.tar.gz hostname@ip:/var/www/[project_name]
echo 'deploying. step 1/2'
ssh hostname@ip './web-deploy.sh'
echo 'deploying. step 2/2'
ssh hostname@ip 'sudo ./reload.sh'
echo 'cleaning'
rm dist.tar.gz
echo 'done.'