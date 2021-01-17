#FROM docker.mirrors.ustc.edu.cn/openjdk:8-jdk-alpine
#FROM openjdk:8-jdk-alpine
FROM adoptopenjdk/openjdk8
VOLUME /tmp
ADD springboot-on-docker-1.0.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
