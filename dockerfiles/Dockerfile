FROM openjdk:16-alpine3.13

WORKDIR /app

COPY sample-java-app/.mvn .mvn
COPY sample-java-app/mvnw sample-java-app/pom.xml ./
RUN ./mvnw dependency:go-offline

COPY sample-java-app .

EXPOSE 8080

CMD ["./mvnw", "spring-boot:run", "-Dspring-boot.run.profiles=mysql", "-Dspring-boot.run.jvmArguments='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:8000'"]
