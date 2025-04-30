<<<<<<< HEAD
# Gunakan image PHP 8.3 FPM dari Docker Hub
FROM php:8.3-fpm

# Install dependensi yang diperlukan untuk Laravel
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    zip \
=======
# Menggunakan image PHP FPM
FROM php:8.3-fpm

# Install dependencies yang dibutuhkan
RUN apt-get update && apt-get install -y \
    git \
    unzip \
>>>>>>> 7982d8704707ef117e51ef402e097fb2629a1791
    curl \
    libzip-dev \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libpq-dev \
    libjpeg-dev \
<<<<<<< HEAD
    libfreetype6-dev \
    libicu-dev \
    && docker-php-ext-install pdo pdo_mysql zip mbstring iconv

# Install Composer (untuk mengelola dependensi PHP)
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set work directory di dalam container
WORKDIR /app

# Salin file aplikasi ke dalam container
COPY . .

# Install dependensi Laravel menggunakan Composer
RUN composer install --no-dev --optimize-autoloader

# Generate key Laravel
RUN php artisan key:generate

# Cache konfigurasi, route, dan view Laravel
RUN php artisan config:cache && php artisan route:cache && php artisan view:cache

# Expose port 9000 untuk FPM
EXPOSE 9000

# Jalankan PHP-FPM untuk Laravel
CMD ["php-fpm"]
=======
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
>>>>>>> 7982d8704707ef117e51ef402e097fb2629a1791
