FROM tomcat:8-jre8
RUN rm -rf /usr/local/tomcat/webapps/*
COPY /var/lib/jenkins/workspace/kube/vprofile-v1.war /usr/local/tomcat/webapps .
EXPOSE 8080
CMD ["catalina.sh","run"]
