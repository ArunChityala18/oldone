For WEBAPP

FROM tomcat:9.0
COPY target/proje.war /usr/local/tomcat/webapps/proje.war
EXPOSE 7012
CMD ["catalina.sh","run"]

For Java

FROM eclipse-temurin:17-jdk
COPY target/java-0.0.1-SNAPSHOT.jar app.jar
CMD ["java","-cp","app.jar","se.java.App"]

docker build -t myweb .
docker run -p 7012:8080 mtwebapp
docker tag mywebapp arunchityala/mywebapp:latest
docker push arunchiatyala/mywebapp:latest
