FROM pierrezemb/gostatic
COPY . /srv/http/
CMD ["-port","8080","-https-promote", "-enable-logging"]
FROM nginx:alpine
COPY . /usr/share/nginx/html
