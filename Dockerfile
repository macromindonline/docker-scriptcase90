FROM macromind/docker-apache-php70:1.2
MAINTAINER MACROMIND Online <idc@macromind.online>
LABEL description="docker image with php5.5 for scriptcase 7.1"

RUN mkdir /usr/lib/php/7.0/sourceguardian
COPY ixed.7.0.lin /usr/lib/php/7.0/sourceguardian/
RUN chmod 777 -R /usr/lib/php/7.0/sourceguardian
RUN echo "[SourceGuardian] zend_extension=/usr/lib/php/7.0/sourceguardian/ixed.7.0.lin" >> /etc/php/7.0/apache2/php.ini

EXPOSE 80
EXPOSE 443

CMD ["apache2-foreground"]

