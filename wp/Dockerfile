FROM ubuntu:14.04
        RUN apt-get update
        EXPOSE 80
        COPY entrypoint.sh /entrypoint.sh
        RUN chmod 777 /entrypoint.sh
        RUN /entrypoint.sh
