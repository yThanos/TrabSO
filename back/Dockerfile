FROM maven:3.8.5-openjdk-17 AS build

WORKDIR /app

RUN git clone https://github.com/yThanos/java-app.git . \
    && mvn clean package -DskipTests

FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
