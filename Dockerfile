FROM nginx:1.11.8
MAINTAINER Sergey Khruschak <sergey.khruschak@gmail.com>
LABEL version="0.2"

COPY nginx.conf /etc/nginx/nginx.conf
COPY /tools/confd /usr/local/bin/confd
COPY /confd/ /etc/confd/
COPY /docker-entrypoint.sh /

CMD ["/docker-entrypoint.sh"]