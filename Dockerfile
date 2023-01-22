FROM ubuntu:18.04
RUN apt-get update && apt-get install default-jre -y
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71.tar.gz /mnt/chetan
copy webapp.war /mnt/chetan/apache-tomcat-9.0.71/webapps
EXPOSE 8080
CMD ["/mnt/chetan/apache-tomcat-9.0.71/bin/catallina.sh", "run"]



