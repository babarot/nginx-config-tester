FROM nginx:1.11.5-alpine

ARG CONF
COPY $CONF /etc/nginx/nginx.conf

CMD ["/usr/sbin/nginx", "-t"]
