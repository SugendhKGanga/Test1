FROM ubuntu:14.04
        RUN apt-get update
        EXPOSE 80
        COPY entrypoint.sh /entrypoint.sh
        #COPY wordpress-4.5.2.tar.gz /opt/wordpress-4.5.2.tar.gz
        COPY wordpress.zip /opt/wordpress.zip
        RUN chmod 777 /entrypoint.sh
        RUN /entrypoint.sh
        #RUN tar xzvf /opt/wordpress-4.5.2.tar.gz
        COPY untar.sh /untar.sh
	RUN chmod 777 /untar.sh
	RUN /untar.sh
	
        #RUN cp /opt/wordpress/wp-config-sample.php /opt/wordpress/wp-config.php
        COPY rename_configfile.sh /rename_configfile.sh
        RUN chmod 777 /rename_configfile.sh
        #RUN /rename_configfile.sh
        
        RUN rsync -avP /opt/wordpress/ /var/www/html/
        RUN mkdir /var/www/html/wp-content/uploads
        #RUN service apache2 start
        
        ENV APACHE_RUN_USER www-data
	ENV APACHE_RUN_GROUP www-data
	ENV APACHE_LOG_DIR /var/log/apache2
	
	CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

