FROM ubuntu:latest
MAINTAINER docker@thb.de

RUN apt-get update
RUN apt-get install openjdk-8-jre-headless -y

# Gradle
#ADD ./build/libs/your-app-1.0.jar /service.jar

# Maven
ADD ./target/spring-boot-webapp-uebung-1.0-SNAPSHOT.jar /service.jar

ENTRYPOINT java -jar /service.jar
EXPOSE 8080

