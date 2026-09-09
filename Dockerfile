FROM tomcat:9.0
COPY target/proje.war /usr/local/tomcat/webapps/proje.war
EXPOSE 7012
CMD ["catalina.sh","run"]