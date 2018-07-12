FROM leen15/apache-php:php71

# Labels
LABEL maintainer "luca@smartdomotik.com"

# Mysql packages
RUN apt update -q && apt install -yqq --force-yes \
    php-mysql

# Start apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
