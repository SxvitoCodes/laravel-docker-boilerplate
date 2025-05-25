#!/bin/bash
set -e

echo ">>> Entrypoint is running"

# Set correct permissions
chmod -R 775 storage bootstrap/cache
chown -R www-data:www-data storage bootstrap/cache

# Run PHP-FPM as the main process
exec php-fpm