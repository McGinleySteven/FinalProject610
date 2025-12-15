FROM ubuntu:25.04

RUN apt update && apt install -y nginx hugo

WORKDIR /build
COPY hugo/ ./

RUN hugo

RUN cp -r public/* /var/www/html

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]