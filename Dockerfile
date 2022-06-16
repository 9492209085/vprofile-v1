FROM tomcat:9.0.64
COPY /target/*.war /usr/local/apache-tomcat-9.0.64/webapps/webapps.war
