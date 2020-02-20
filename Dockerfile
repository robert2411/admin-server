FROM maven:3-jdk-11 AS builder

WORKDIR /project
COPY ./pom.xml /project/pom.xml
RUN mvn dependency:resolve
COPY . /project
RUN mvn clean package


FROM gcr.io/distroless/java:11 AS admin-server
COPY --from=builder /project/target/admin-server.jar /app/admin-server.jar
WORKDIR /app
CMD ["admin-server.jar"]