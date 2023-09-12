FROM openjdk:11
COPY *.jar app.jar
CMD ["java", "-jar", "app.jar"]
