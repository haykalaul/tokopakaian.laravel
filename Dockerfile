# Base image
FROM php:8.3-fpm

# Install dependencies
RUN apt-get update && apt-get install -y \
    git unzip zip curl libzip-dev libpng-dev libonig-dev libxml2-dev \
    libpq-dev libjpeg-dev libpng-dev libfreetype6-dev libicu-dev \
    && docker-php-ext-install pdo pdo_mysql zip mbstring iconv

# Set working directory
WORKDIR /app

# Copy the Laravel project files
COPY . .

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Laravel dependencies
RUN composer install --no-dev --optimize-autoloader

# Cache configuration and routes for production
RUN php artisan config:cache && php artisan route:cache && php artisan view:cache

# Expose the port for the Laravel server
EXPOSE 8000

# Run Laravel's built-in PHP server
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
