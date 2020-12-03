FROM wordpress
RUN echo 'mkdir /var/www/html/public'
WORKDIR /var/www/html/public
