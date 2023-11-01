FROM alpine:3.17.2
EXPOSE 8080
ENV USERNAME=Devsecops
ENV PASSWORD=Test@123
ADD target/devops-integration.jar devops-integration.jar
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
