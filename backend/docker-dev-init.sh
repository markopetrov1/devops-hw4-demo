#!/usr/bin/env bash

while !</dev/tcp/devops_db/5432 2>/dev/null; do
    echo 'Waiting for postgres DB.'
    sleep 1;
done;

echo 'Postgres is ready!'

python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput
python manage.py runserver 0.0.0.0:8000
