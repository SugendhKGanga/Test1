FROM ubuntu:14.04
        RUN apt-get update
        EXPOSE 80
        COPY entrypoint.sh /entrypoint.sh
        COPY wordpress-4.5.2.tar.gz /opt
        RUN chmod 777 /entrypoint.sh
        RUN /entrypoint.sh
