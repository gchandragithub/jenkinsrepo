#!/bin/sh

curl -X POST localhost:8088/actuator/shutdown
sleep 5
export ENVIRONMENT_STAGEPROD=8088
sleep 1
./gs-spring-boot/initial/gradlew build
docker build --build-arg environment=8088 -t helloworld .
docker run -p 8088:8088 helloworld:latest
#java -jar /Users/Shared/Jenkins/Home/jenkinsrepo/gs-spring-boot/initial/build/libs/gs-spring-boot-0.1.0.jar
#./gs-spring-boot/initial/test2stage.sh
