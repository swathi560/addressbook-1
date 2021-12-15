From tomcat:8.5.72-jdk17-openjdk-buster
COPY addressbook.war /usr/local/tomcat/wedapps
expose 8080
CMD ["catalina.sh", "run"]
