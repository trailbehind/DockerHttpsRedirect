FROM ubuntu:16.04
MAINTAINER Jesse Crocker "jesse@gaiagps.com"

RUN apt-get update; \
    apt-get install -q -y nginx; \
    useradd nginx

ADD nginx /opt/nginx

EXPOSE 8000
CMD ["/usr/sbin/nginx", "-c", "/opt/nginx/nginx.conf"]
