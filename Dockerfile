FROM gradle:6.9.0-jdk8 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
# RUN gradle assemble

FROM openjdk:8-jre-slim

RUN mkdir /app

COPY --from=build /home/gradle/src/build/libs/*.jar /app/spring-boot-application.jar
COPY --from=build /home/gradle/src/dd-java-agent.jar /app/dd-java-agent.jar
COPY --from=build /home/gradle/src/entrypoint.sh /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
