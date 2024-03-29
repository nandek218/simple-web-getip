FROM nandek218/webapps-php:v1.0

#RUN apt-get update && apt-get install -y net-tools apache2 php7.2 php7.2-cgi php7.2-cli libapache2-mod-php7.2
#RUN apt-get update && apt-get install -y apache2

COPY ./www/* /var/www/html/

EXPOSE 80:80

WORKDIR /var/www/html/

CMD ["/etc/init.d/apache2", "start"]
CMD ["apachectl", "-D", "FOREGROUND"]
