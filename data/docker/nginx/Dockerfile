FROM nginx

RUN apt-get update -y \
 && apt-get install openssl -y \
 && apt-get clean

RUN mkdir -p /ssl \
 && cd /ssl \
 && openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout ssl.key -out ssl.crt -subj "/CN=SensuGo" -days 2000

COPY ./data/config/nginx/default.conf /etc/nginx/conf.d/default.conf
