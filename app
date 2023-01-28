server {
    listen 80;
    listen [::]:80;
    server_name 18.116.63.36;
    error_log /home/ubuntu/agent/workspace/test-deploy/logs/error.log;
    access_log /home/ubuntu/agent/workspace/test-deploy/logs/access.log;

    location / {
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_pass http://unix:/run/gunicorn.sock;
    }
}