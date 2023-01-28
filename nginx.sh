#!/bin/bash

sudo cp -rf app /etc/nginx/sites-available/app
chmod 710 $PWD

sudo ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx started"

sudo systemctl status nginx