java -javaagent:dd-java-agent.jar -Ddd.profiling.enabled=true -XX:FlightRecorderOptions=stackdepth=256 -Ddd.logs.injection=true -Ddd.trace.sample.rate=1 -Ddd.service=my-app -Ddd.env=staging -jar spring_docker-practice.jar -Ddd.version=1.0

