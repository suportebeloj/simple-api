#!/bin/bash

sudo cp -rf app /etc/nginx/sites-available

sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx started"

sudo systemctl status nginx