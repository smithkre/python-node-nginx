# CONFIG

## For Nginx
Add 2 files (nginx.conf, nginx.vh.default.conf)

COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf

## Python Application
Add following command (Install Pillow & mysqlclient)

COPY . /app
WORKDIR /app

RUN apk add --no-cache build-base && \
apk add --no-cache mariadb-connector-c-dev jpeg-dev zlib-dev libpng-dev tiff-dev && \
pip install -r requirements.txt && \
apk del build-base

# Specification
pm2-py2-nginx
- Python 2.7
- Node PM2
- Nginx

py2-nginx
- Python 2.7
- Nginx

pm2-py3-nginx
- Python 3.6
- Node PM2
- Nginx

py3-nginx
- Python 3.6
- Nginx


