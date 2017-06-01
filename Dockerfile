FROM alpine:3.6
MAINTAINER Lucas <lg@wb7.eu>

# update and install
RUN apk update && \
    apk add bash ca-certificates curl wget php7-*

# install phpunit
RUN wget https://phar.phpunit.de/phpunit-6.1.phar && \
    chmod +x phpunit-6.1.phar && \
    mv phpunit-6.1.phar /usr/local/bin/phpunit
    
#install composer
RUN apk add wget
ADD composer.sh /tmp/composer.sh
RUN chmod +x /tmp/composer.sh && /tmp/composer.sh
