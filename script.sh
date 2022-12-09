#!/bin/bash

# Install nginx, node, and git
yum install -y nginx nodejs git

# Clone the nodejs-simple-http repo
git clone https://github.com/ridhosulistiawan/nodejs-simple-http.git

# Move into the repo directory
cd nodejs-simple-http

# Start the nodejs app
node server.js &

# Configure nginx as a reverse proxy
cat > /etc/nginx/conf.d/reverse-proxy.conf <<EOF
server {
  listen       80;
  server_name  localhost;

  location / {
    proxy_pass http://localhost:3000;
  }
}
EOF

# Set SELinux
sudo setsebool -P httpd_can_network_connect 1

# Restart nginx
systemctl restart nginx