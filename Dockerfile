# Gunakan image resmi PHP dengan FPM
FROM php:8.3-fpm

# Install dependensi sistem untuk Laravel
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    zip \
    curl \
    libzip-dev \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libpq-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libicu-dev && \
    docker-php-ext-install pdo pdo_mysql zip mbstring iconv

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set direktori kerja di dalam container
WORKDIR /app

# Salin semua file proyek Laravel ke dalam container
COPY . .

# Install dependency Laravel via Composer
RUN composer install --no-dev --optimize-autoloader

# Jalankan Laravel menggunakan PHP built-in server dan port dari Railway
CMD sh -c "php artisan serve --host=0.0.0.0 --port=${PORT}"
