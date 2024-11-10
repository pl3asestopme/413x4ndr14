#!/bin/bash
python manage.py makemigrations --noinput
python manage.py migrate --noinput
gunicorn 413x4ndr14.wsgi:application --bind 0.0.0.0:8000
