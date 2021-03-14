FROM alpine:3.12

RUN apk add --no-cache nginx nginx-mod-http-dav-ext apache2-utils

RUN htpasswd -b -c /etc/nginx/.htpasswd user password

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./docker-entrypoint.sh /docker-entrypoint.sh

ENV PUID 1000

EXPOSE 80

STOPSIGNAL SIGKILL

CMD ["/docker-entrypoint.sh"]
