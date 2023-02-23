FROM alpine:3.17.2
EXPOSE 8080
COPY trivy /usr/local/bin/trivy
ADD target/devops-integration.jar devops-integration.jar
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
