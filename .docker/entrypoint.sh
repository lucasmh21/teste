#!/bin/bash

#On error no such file entrypoint.sh, execute in terminal - dos2unix .docker\entrypoint.sh
touch teste.hmtl
ls -la
chown -R www-data:www-data .
composer install
php artisan key:generate
php artisan migrate

php-fpm
