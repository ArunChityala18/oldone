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

//////

minikube start --driver=docker
minikube status
kubectl get pods
kubectl create deployment mynginx --image=nginx
kubectl get deployments
kubectl expose deployment mynginx --type=NodePort --port=80 --target-port=80
kubectl scale deployment mynginx --replicas=4
kubectl port-forward svc/mynginx 8084:80
kubectl delete deployment mynginx

docker pull jasonrivers/nagios:latest
docker run --name nagiodemo -p 8888:80 jasonrivers/nagios:latest

sudo apt update
sudo apt-get install docker.io
sudo apt install git
sudo apt install nano
git clone 
cd repos



version: '3.8'

services:
  wordpress:
    image: wordpress:latest
    container_name: wordpress_app
    restart: always
    ports:
      - "8080:80"
    environment:
      WORDPRESS_DB_HOST: db:3306
      WORDPRESS_DB_USER: wpuser
      WORDPRESS_DB_PASSWORD: wppassword
      WORDPRESS_DB_NAME: wordpress
    volumes:
      - wordpress_data:/var/www/html
    depends_on:
      - db

  db:
    image: mysql:8.0
    container_name: mysql_db
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: root123
      MYSQL_DATABASE: wordpress
      MYSQL_USER: wpuser
      MYSQL_PASSWORD: wppassword
    volumes:
      - mysql_data:/var/lib/mysql

volumes:
  wordpress_data:
  mysql_data:



pipeline {
    agent any

    tools {
        maven 'MAVEN-HOME'//MAVEN_HOME
    }

    stages {
        stage('git repo & clean') {
            steps {
                //bat "rmdir /s /q mavenjava"
                bat "git clone provide your github link"
                bat "mvn clean -f mavenjava"
            }
        }

        stage('install') {
            steps {
                bat "mvn install -f mavenjava" //project name
            }
        }

        stage('test') {
            steps {
                bat "mvn test -f mavenjava"
            }
        }

        stage('package') {
            steps {
                bat "mvn package -f mavenjava"
            }
        }
    }
}

https://github.com/SuryaTeja512/mavenWebApp

