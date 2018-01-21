FROM ubuntu:16.04

ENV CC_BACKEND_SERVERS

RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
	
COPY nginx.conf /etc/nginx/nginx.conf
COPY fix-nginx-conf.sh /etc/nginx/fix-nginx-conf.sh

VOLUME /usr/share/hypervisor_etc
VOLUME /etc/nginx

EXPOSE 80

CMD /etc/nginx/fix-nginx-conf.sh CC_BACKEND_SERVERS
