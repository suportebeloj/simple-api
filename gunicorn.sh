#!/bin/bash

source venv/bin/activate

sudo cp -rf gunicorn.socket /etc/systemd/system/
sudo cp -rf gunicorn.service /etc/systemd/system/

echo "$USER"
echo "$PWD"

sudo systemctl daemon-reload
sudo systemctl start gunicorn.socket
sudo systemctl enable gunicorn.socket

echo "Gunicorn started"

sudo systemctl status gunicorn.socket
sudo systemctl restart gunicorn.socket