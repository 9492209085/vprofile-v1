FROM centos:latest
RUN  yum install java -y
RUN  mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.63/bin/apache-tomcat-9.0.63.tar.gz dest=/opt/tomcat
RUN tar -xvzf apache-tomcat-9.0.63.tar.gz
RUN mv apache-tomcat-9.0.63/* /opt/tomcat
COPY ./vprofile-v1.war /opt/tomcat/webapps .
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
