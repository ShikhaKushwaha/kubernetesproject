#This is a sample Image
#This is a sample Image
FROM ubuntu
MAINTAINER demousr@gmail.com


RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install zip -y
RUN apt-get install unzip -y
ADD https://www.free-cs.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/*
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd:, "-D", "FOREGROUND"]
EXPOSE 80 


