apt-get update
apt-get install php -y
apt install nginx php php-fpm -y

echo 'upstream loadbalancer {
  server 165.22.245.44:8000 ;
  server 157.245.157.246:8000 ;
}

server {
  listen 80;
  server_name _;

  location / {
    proxy_pass http://loadbalancer;
  }
}
' > /etc/nginx/sites-available/loadbalancer

ln -s /etc/nginx/sites-available/loadbalancer /etc/nginx/sites-enabled/jarkom

rm /etc/nginx/sites-enabled/default

service nginx restart