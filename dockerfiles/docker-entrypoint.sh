#!/bin/bash -x

set -e

echo migrate...
python3.8 manage.py migrate --noinput
echo start gunicorn...
exec gunicorn core.wsgi:application -b 0.0.0.0:8000 -w 3
