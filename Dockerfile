# Pull base image.
FROM ubuntu:14.04

# Install MySQL.
RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server && \
  rm -rf /var/lib/apt/lists/* && \
  sed -i 's/^\(bind-address\s.*\)/# \1/' /etc/mysql/my.cnf && \
  sed -i 's/^\(log_error\s.*\)/# \1/' /etc/mysql/my.cnf && \
  echo "mysqld_safe &" > /tmp/config && \
  echo "mysqladmin --silent --wait=30 ping || exit 1" >> /tmp/config && \
  echo "mysql -e 'GRANT ALL PRIVILEGES ON *.* TO \"root\"@\"%\" WITH GRANT OPTION;'" >> /tmp/config && \
  bash /tmp/config && \
  rm -f /tmp/config

# Define mountable directories.
VOLUME ["/etc/mysql", "/var/lib/mysql"]

# Define working directory.
WORKDIR /data

COPY create_db.sh /create_db.sh
RUN chmod 777 /create_db.sh
#RUN cd / && \
#    ./create_db.sh
#ENTRYPOINT ["/create_db.sh"]
# Define default command.]
CMD ["mysqld_safe"]

# Expose ports.
EXPOSE 3306


#COPY create_db.sh /create_db.sh
#RUN chmod 777 /create_db.sh
#RUN /create_db.sh

#RUN mysql -uroot -p""  &&  mysql create database wp;
#RUN mysql -uroot -e "create database test;"

#RUN \
#      mysql -e "SET PASSWORD FOR root@'localhost' = PASSWORD('password')"; && \
#      export MYSQL_USER=root && \
#      export MYSQL_PASSWORD=password && \
#      mysql -u $MYSQL_USER -p$MYSQL_PASSWORD -e "create database wp"; && \
#      mysql -u $MYSQL_USER -p$MYSQL_PASSWORD -e "FLUSH PRIVILEGES";

