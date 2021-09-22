#!/bin/bash

java -javaagent:/app/dd-java-agent.jar \
      -XX:FlightRecorderOptions=stackdepth=256 \
      -Ddd.env=SIT \
      -Ddd.version=2.0.0 \
      -Ddd.service=dd-api7 \
      -jar /app/spring-boot-application.jar
