FROM mitjy/django-node-nginx:pm2-py3-nginx

RUN apk add --no-cache build-base && \
    apk add --no-cache zlib-dev libpng-dev tiff-dev && pip install --upgrade cython && \
    apk del build-base

COPY . .
RUN pip install -r requirements.txt


