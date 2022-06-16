FROM tomcat:9
COPY /target/vprofile-v1.war /var/lib/tomcat9/webapps .
EXPOSE 8080
