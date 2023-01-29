#!/bin/bash

sudo cp -rf mm.plutusfi.io /etc/nginx/sites-available/mm.plutusfi.io
chmod 710 $PWD

sudo ln -s /etc/nginx/sites-available/mm.plutusfi.io /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl restart nginx

echo "Nginx started"

sudo systemctl status nginx