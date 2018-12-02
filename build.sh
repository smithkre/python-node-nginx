#!/bin/bash

cd pm2-py2-nginx && docker build -t mitjy/django-node-nginx:pm2-py2-nginx .
cd .. && cd pm2-py3-nginx && docker build -t mitjy/django-node-nginx:pm2-py3-nginx .
cd .. && cd py2-nginx && docker build -t mitjy/django-node-nginx:py2-nginx .
cd .. && cd py3-nginx && docker build -t mitjy/django-node-nginx:py3-nginx .

docker push mitjy/django-node-nginx:pm2-py2-nginx
docker push mitjy/django-node-nginx:pm2-py3-nginx
docker push mitjy/django-node-nginx:py2-nginx
docker push mitjy/django-node-nginx:py3-nginx
