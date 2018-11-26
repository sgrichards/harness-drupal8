#!/bin/bash

function task_drupal_install()
{
    task "mysql:available"

    passthru "drupal site:install standard \
        --langcode=en \
        \
        --db-type=mysql \
        --db-host=${DB_HOST} \
        --db-name=${DB_NAME} \
        --db-user=${DB_USER} \
        --db-pass=${DB_PASS} \
        --db-port=3306 \
        \
        --site-name=Drupal \
        --site-mail=admin@example.com \
        \
        --account-name=admin \
        --account-mail=admin@example.com \
        --account-pass=admin123"

    chmod 755 /app/web/sites/default
    rm -f /app/web/sites/default/settings.php

    task "skeleton:apply"
    task "assets:dump"
}
