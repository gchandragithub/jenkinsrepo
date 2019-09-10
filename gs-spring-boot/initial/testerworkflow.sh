#!/bin/sh

curl -X POST localhost:8088/actuator/shutdown
sleep 5
export ENVIRONMENT_STAGEPROD=8088
sleep 1
./gs-spring-boot/initial/gradlew build
java -jar /Users/Shared/Jenkins/Home/jenkinsrepo/gs-spring-boot/initial/build/libs/gs-spring-boot-0.1.0.jar
./test2stage.sh
