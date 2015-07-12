/etc/init.d/tomcat start
/etc/init.d/mysqld start
mysql -u root < /tmp/guacamolemysql.sql
cat /tmp/guacamole-auth-jdbc-0.9.6/mysql/schema/*.sql | mysql -u root guacamole_db
