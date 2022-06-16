FROM tomcat:9
COPY /target/vprofile-v1.war $CATALINA_HOME/webapps .
EXPOSE 8080
