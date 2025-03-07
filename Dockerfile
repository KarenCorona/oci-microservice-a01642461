FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-a01642461
COPY /target/*.jar oci-microservice-a01642461.jar
COPY /src/main/resources/Wallet_javadev101 /oci-microservice-a01642461/Wallet_javadev
ENV TNS_ADMIN=/oci-microservice-a01642461/Wallet_javadev
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-<your student id>.jar" ]