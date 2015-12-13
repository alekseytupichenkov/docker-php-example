FROM nginx:latest

ADD nginx.conf /etc/nginx/
ADD vhost.conf /etc/nginx/sites-available/

RUN usermod -u 1000 www-data

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
