FROM php:8.2-fpm

# Set working directory
WORKDIR /var/www/html


# For postgresql use:
# RUN apt-get update && apt-get install -y \
# libpq-dev \
# && docker-php-ext-install pgsql pdo_pgsql

RUN docker-php-ext-install pdo pdo_mysql


