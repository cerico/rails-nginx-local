brew install nginx passenger
sudo bash -c 'cat <<EOT >> /etc/hosts
127.0.0.1 rentify.test
127.0.0.1 www.rentify.test
127.0.0.1 api.rentify.test
127.0.0.1 rentify.local
127.0.0.1 www.rentify.local
127.0.0.1 api.rentify.local
EOT'
root=`find $PWD ~ -type d  -path '*/rentify/public'`
cat <<EOT >> rentify.test.conf
server {
    listen 80;
    server_name rentify.test.conf;

    root $root;

    passenger_enabled on;
    passenger_app_env development;
    passenger_ruby ~/.rbenv/versions/2.3.4/bin/ruby;
}
EOT
mv /usr/local/etc/nginx/nginx.conf /usr/local/etc/nginx/nginx.orig
cp nginx.template /usr/local/etc/nginx/nginx.conf
cp *.conf /usr/local/etc/nginx/servers
sudo nginx
