FROM openjdk:11.0.14.1-oracle
COPY . /app
EXPOSE 8081
ENTRYPOINT [ "java", "-jar", "app/demo-0.0.1-SNAPSHOT.jar" ]