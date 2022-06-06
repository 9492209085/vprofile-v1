FROM centos:latest
RUN  /bin/sh -c yum install java -y
RUN  mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.63/bin/apache-tomcat-9.0.63.tar.gz .
RUN tar -xvzf ./apache-tomcat-9.0.63.tar.gz 
RUN mv apache-tomcat-9.0.63/* /opt/tomcat
COPY /var/lib/jenkins/workspace/vprofile-v1.war/target/vprofile-v1.war /opt/tomcat/webapps/v.war
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
