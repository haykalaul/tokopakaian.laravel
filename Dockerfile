# Menggunakan image PHP FPM
FROM php:8.3-fpm

# Install dependencies yang dibutuhkan
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    curl \
    libzip-dev \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libpq-dev \
    libjpeg-dev \
    libpng-dev \
    libfreetype6-dev \
    libicu-dev && \
    docker-php-ext-install pdo pdo_mysql zip mbstring iconv

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set working directory
WORKDIR /app

# Copy semua file ke dalam container
COPY . .

# Install dependencies Laravel
RUN composer install --no-dev --optimize-autoloader

# Generate key dan cache konfigurasi
RUN php artisan key:generate
RUN php artisan config:cache && php artisan route:cache && php artisan view:cache

# Jalankan server Laravel (gunakan PORT dari Railway)
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
