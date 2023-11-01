FROM alpine:3.17.2
EXPOSE 8080
ENV USERNAME=Devsecops
ENV PASSWORD=Test@123i4
ENV Api Key=zaCELgL. 0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx
ADD target/devops-integration.jar devops-integration.jar
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
