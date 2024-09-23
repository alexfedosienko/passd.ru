FROM alpine:3.18
RUN apk update --no-cache
RUN apk add apache2

ADD ./src/ /var/www/localhost/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]