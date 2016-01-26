docker run --name wordpressdb -e MYSQL_DATABASE=wordpress -e MYSQL_ROOT_PASSWORD=password -v "$PWD/mysql":/var/lib/mysql -d mysql
docker pull wordpress
docker run -e WORDPRESS_DB_PASSWORD=password -d --name wordpress --link wordpressdb:mysql -p 127.0.0.4:8080:80 -v "$PWD/www":/var/www/html  wordpress
