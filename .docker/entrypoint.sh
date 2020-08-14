#!/bin/bash

#On error no such file entrypoint.sh, execute in terminal - dos2unix .docker\entrypoint.sh
touch teste.hmtl
ls -la
dockerize -template ./.docker/app/.env:.env -wait tcp://db:3306 -timeout 40s
chown -R www-data:www-data .
composer install
php artisan key:generate
php artisan migrate

php-fpm
