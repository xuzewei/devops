docker run --name zabbix -e DB_SERVER_HOST="mysql" -e MYSQL_USER="zabbix" -e MYSQL_PASSWORD="zabbix" -d zabbix/zabbix-server-mysql:alpine-trunk

