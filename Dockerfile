FROM openjdk:11
EXPOSE 8080
ADD /userregistration-0.0.4-dev.jar /userregistration-0.0.4-dev.jar
ENTRYPOINT ["java","-jar","userregistration-0.0.4-dev.jar"]