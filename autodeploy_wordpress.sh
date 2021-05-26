apt-get install nginx -y
apt install php-fpm7.4 -y
apt install php-mysql -y

echo "=========================extract wordpress cms========================="
tar vxzf wordpress-5.7.2.tar.gz
echo "=========================copy wordpress========================="
cp wordpress /var/www/html/
cp wp /etc/nginx/sites-available/
rm -rf /etc/nginx/sites-enabled/default
echo "=========================creating wordpress symlink========================="
ln -s /etc/nginx/sites-available/wp /etc/nginx/sites-enabled/wp

echo "=========================restart nginx========================="
service nginx restart

echo "=========================silahkan di test======================"
