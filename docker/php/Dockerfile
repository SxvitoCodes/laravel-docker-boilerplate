# Stage 1: Composer-only image to copy composer binary
FROM composer:2 as composer

# Stage 2: PHP
FROM php:8.2-fpm

# Install system dependencies & PHP extensions
RUN apt-get update && apt-get install -y \
    git curl zip unzip libpq-dev libonig-dev libxml2-dev libzip-dev \
    && docker-php-ext-install pdo pdo_pgsql mbstring zip exif pcntl

# Copy composer from the first stage
COPY --from=composer /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www/html
