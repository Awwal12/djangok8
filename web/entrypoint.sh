#!/bin/bash
APP_PORT=${PORT:-8000}

# /opt/venv/bin/gunicorn djangok8.wsgi:application --bind "0.0.0.0:${APP_PORT}"
/opt/venv/bin/gunicorn wordjolt.wsgi:application --bind "0.0.0.0:${APP_PORT}"