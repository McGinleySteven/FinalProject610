FROM ubuntu:25.04

RUN apt update && apt install -y nginx hugo

COPY resume/ ./

RUN cd resume && hugo

RUN cp -r public/* /var/www

ENTRYPOINT ["/usr/bin/nginx"]
