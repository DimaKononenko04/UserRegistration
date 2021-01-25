FROM openjdk:11
EXPOSE 8080
ADD /userregistration-0.0.1-SNAPSHOT.jar /userregistration-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","userregistration-0.0.1-SNAPSHOT.jar"]