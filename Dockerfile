FROM openjdk:17-ea-11-jdk-slim
VOLUME /tmp
COPY build/libs/gateway-1.0.jar ApiGateWay.jar
ENTRYPOINT ["java","-jar","ApiGateWay.jar"]
