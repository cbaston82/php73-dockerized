FROM php:7.3-apache
RUN apt-get update
RUN apt-get install -y git
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN a2enmod rewrite
COPY . /var/www/html/
EXPOSE 80
