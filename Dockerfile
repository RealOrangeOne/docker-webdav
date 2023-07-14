FROM alpine:3.18

RUN apk add --no-cache nginx nginx-mod-http-dav-ext apache2-utils

RUN mkdir -p /run/nginx

RUN htpasswd -b -c /etc/nginx/.htpasswd user password

COPY ./default.conf /etc/nginx/http.d/default.conf
COPY ./docker-entrypoint.sh /docker-entrypoint.sh

RUN touch /etc/nginx/extra.conf

ENV PUID 1000

EXPOSE 80

STOPSIGNAL SIGKILL

CMD ["/docker-entrypoint.sh"]
