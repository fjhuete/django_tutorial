#!/bin/bash
export DJANGO_SUPERUSER_PASSWORD=$DJANGO_PASS
cd /usr/src/app
python3 manage.py migrate
python3 manage.py createsuperuser --username $DJANGO_USER --email $DJANGO_MAIL --noinput
python3 manage.py runserver 0.0.0.0:3000