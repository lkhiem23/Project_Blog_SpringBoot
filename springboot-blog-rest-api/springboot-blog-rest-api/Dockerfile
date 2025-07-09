FROM openjdk:22

ARG FILE_JAR=target/springboot-blog-rest-api-0.0.1-SNAPSHOT.jar

ADD ${FILE_JAR} api-service.jar

ENTRYPOINT ["java", "-jar", "api-service.jar"]

EXPOSE 8080


