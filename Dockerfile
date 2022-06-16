FROM tomcat:9
COPY /target/vprofile-v1.war /usr/local/tomcat/webapps .
