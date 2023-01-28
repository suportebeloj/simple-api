server {
    listen 80;
    server_name 18.116.63.36;
    error_log /home/ubuntu/agent/workspace/test-deploy/logs/error.log;
    access_log /home/ubuntu/agent/workspace/test-deploy/logs/access.log;

    location / {
        include proxy_params;
        proxy_pass http://unix:/run/gunicorn.sock;
    }
}