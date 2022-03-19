FROM maven:3.6-jdk-8-alpine
COPY pom.xml /app/
COPY src /app/src
RUN cd /app && mvn -e -B package -Plocal
ENTRYPOINT ["java", "-jar", "/app/target/colasMQ-0.0.1-SNAPSHOT.jar"]
EXPOSE 8090

#usar solo jar
