# Use the official WordPress image as base
FROM wordpress:php8.2-apache

# Install additional PHP extensions
RUN apt-get update && apt-get install -y \
    libxml2-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    && docker-php-ext-install soap gd

# Set permissions for wp-content
RUN chown -R www-data:www-data /var/www/html/wp-content && \
    find /var/www/html/wp-content -type f -exec chmod 644 {} \; && \
    find /var/www/html/wp-content -type d -exec chmod 755 {} \;
#123
# Set environment variables
ENV WORDPRESS_DB_HOST=dbetesami:3306
ENV WORDPRESS_DB_NAME=shetakco_Buy
ENV WORDPRESS_DB_USER=shetakco_Buy
ENV WORDPRESS_DB_PASSWORD=kJ&f3#4A%TM
