FROM openjdk:11

COPY target/portaldemo-0.0.1-SNAPSHOT.jar portaldemo-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","/portaldemo-0.0.1-SNAPSHOT.jar"]

