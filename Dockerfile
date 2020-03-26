FROM leen15/apache-php:php72

# Labels
LABEL maintainer "luca@smartdomotik.com"

# Mysql packages
RUN apt update -q && apt install -yqq --force-yes \
    php7.2-mysql

# Start apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
