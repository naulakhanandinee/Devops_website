FROM ubuntu:latest

RUN apt-get update && apt-get install -y apache2

COPY /path/to/website/files /var/www/html

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]


ADD . /var/www/html
