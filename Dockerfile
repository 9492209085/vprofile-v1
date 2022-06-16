FROM tomcat:9
COPY /target/vprofile-v1.war /usr/share/tomcat/webapps .
EXPOSE 8080
