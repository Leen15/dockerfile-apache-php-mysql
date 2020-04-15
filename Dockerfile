FROM leen15/apache-php:php74

# Labels
LABEL maintainer "luca@smartdomotik.com"

# Mysql packages
RUN apt update -q && apt install -yqq --force-yes \
    php7.4-mysql

# Start apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
