server {
    listen 80;
    listen [::]:80;
    server_name mm.plutusfi.io www.mm.plutusfi.io;
    error_log /home/ubuntu/agent/workspace/test-deploy/logs/error.log;
    access_log /home/ubuntu/agent/workspace/test-deploy/logs/access.log;

    location /backend {
        include proxy_params;
        proxy_pass http://unix:/run/gunicorn.sock;
    }
}