FROM ubuntu
MAINTAINER Kavoos Bojnourdi <k.bojnourdi@gmail.com>


RUN apt-get update && apt dist-upgrade -y
RUN apt install -y lighttpd
RUN apt install -y php7.0 php7.0-pgsql
RUN apt install -y rsyslog
RUN lighty-enable-mod fastcgi

VOLUME ["/var/www/html","/var/cache/lighttpd/uploads"]
COPY bin /bin/
USER www-data

EXPOSE 80
CMD ["/bin/startup.sh"]

