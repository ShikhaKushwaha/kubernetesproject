# Use CentOS as the base image
FROM centos:latest

# Install Nginx and other dependencies
RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y nginx && \
    yum clean all && \
    rm -rf /var/cache/yum

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the source code into the container
COPY loxury.zip /usr/share/nginx/html/

# Extract the source code
RUN cd /usr/share/nginx/html/ && \
    unzip loxury.zip && \
    mv loxury/* . && \
    rm -rf loxury loxury.zip

# Expose the default Nginx port
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

