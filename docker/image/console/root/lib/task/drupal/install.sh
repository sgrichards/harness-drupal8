#!/bin/bash

function task_drupal_install()
{
    task "mysql:available"

    passthru "drupal site:install standard \
        --langcode=en \
        \
        --db-type=mysql \
        --db-host=mysql \
        --db-name=drupal \
        --db-user=drupal \
        --db-pass=drupal \
        --db-port=3306 \
        \
        --site-name=Drupal \
        --site-mail=admin@example.com \
        \
        --account-name=admin \
        --account-mail=admin@example.com \
        --account-pass=admin123"

    task "skeleton:apply"
    task "assets:dump"
}
