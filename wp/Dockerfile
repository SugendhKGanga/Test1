FROM ubuntu:14.04
        RUN apt-get update
        EXPOSE 80
        COPY entrypoint.sh /entrypoint.sh
        COPY wordpress-4.5.2.tar.gz /opt
        RUN chmod 777 /entrypoint.sh
        RUN /entrypoint.sh
        RUN tar xzvf /opt/latest.tar.gz
        RUN cp /opt/wordpress/wp-config-sample.php /opt/wordpress/wp-config.php
        RUN rsync -avP /opt/wordpress/ /var/www/html/
        RUN mkdir /var/www/html/wp-content/uploads
