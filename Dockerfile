#This is a sample Image
FROM ubuntu
MAINTAINER demousr@gmail.com

RUN apt-get update && \
    apt-get install -y nginx zip unzip

ADD https://drive.google.com/uc?export=download&id=1rJVVZwssiVVT2d4q5GpWgNa_YfXuVj8m /var/www/html/
WORKDIR /var/www/html
RUN unzip -q loxury.zip && \
    cp -rvf loxury/* . && \
    rm -rf loxury loxury.zip

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]


