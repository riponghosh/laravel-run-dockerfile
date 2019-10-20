#!/bin/bash

service apache2 start
service mysql start
#service mysql start
mysql -u root -h localhost -e "create database laravel;"
php artisan migrate
php artisan serve --host=0.0.0.0

/bin/bash