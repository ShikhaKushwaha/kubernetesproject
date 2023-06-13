#This is a sample Image
FROM ubuntu
MAINTAINER demousr@gmail.com


RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install zip -y
RUN apt-get install unzip -y
ADD https://drive.google.com/uc?export=download&id=1rJVVZwssiVVT2d4q5GpWgNa_YfXuVj8m /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/*
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd:, "-D", "FOREGROUND"]
EXPOSE 80

