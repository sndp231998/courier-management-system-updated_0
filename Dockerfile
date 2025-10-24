# Use official PHP image with Apache
FROM php:8.1-apache

# Install mysqli extension for MySQL connectivity
RUN docker-php-ext-install mysqli

# Optional: enable Apache mod_rewrite (if your app uses .htaccess)
RUN a2enmod rewrite

# Copy project files into Apache web root
COPY . /var/www/html/

# Set proper ownership and permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 80 for web traffic
EXPOSE 80
