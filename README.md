# 프로젝트 빌드
`./gradlew clean build`

# Docker 이미지 빌드
`docker build -t developiaa/gateway:1.0 .`

# Docker 이미지 업로드
`docker push developiaa/gateway:1.0`

# Docker 실행
`docker run -d -p 8000:8000 --network ecommerce-network -e "spring.cloud.config.uri=http://config-service:8888" -e "spring.rabbitmq.host=rabbitmq" -e "eureka.client.serviceUrl.defaultZone=http://discovery-service:8761/eureka/" --name apigateway-service  developiaa/gateway:1.0`
