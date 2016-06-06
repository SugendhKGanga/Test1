mysql -e "SET PASSWORD FOR root@'localhost' = PASSWORD('password')";

#Specify MySQL User
export MYSQL_USER=root
#Specify MySQL Password
export MYSQL_PASSWORD=password

mysql -u $MYSQL_USER -p$MYSQL_PASSWORD -e "create database wp";
mysql -u $MYSQL_USER -p$MYSQL_PASSWORD -e "FLUSH PRIVILEGES";
