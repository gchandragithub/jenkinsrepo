#!/bin/sh

TEST="./gs-spring-boot/initial/test1stage.sh"
RESPONSE=`$TEST`
if [ "$RESPONSE" == "PASSED" ]; then
    echo "Staging Pre Deployment Passed"
else
    exit
fi

TEST="./gs-spring-boot/initial/test1prod.sh"
RESPONSE=`$TEST`
if [ "$RESPONSE" == "PASSED" ]; then
    echo "Production Pre Deployment Passed"
else
    exit
fi

curl -X POST localhost:8088/actuator/shutdown
sleep 5
export ENVIRONMENT_STAGEPROD=8088
sleep 1
./gradlew build && java -jar build/libs/gs-spring-boot-0.1.0.jar&
sleep 10
TEST="./test2stage.sh"
RESPONSE=`$TEST`

if [ "$RESPONSE" == "PASSED" ]; then
    echo "PASSED"
    curl -X POST localhost:9099/actuator/shutdown
    sleep 5
    export ENVIRONMENT_STAGEPROD=9099
    ./gradlew build && java -jar build/libs/gs-spring-boot-0.1.0.jar&
    sleep 10
    TEST="./test2prod.sh"
    RESPONSE=`$TEST`
    
    if [ "$RESPONSE" == "PASSED" ]; then
        echo "Deployed To Production"
    else
        echo "Production Test Failed"
    fi

else
    echo $RESPONSE
    echo "STAGING TEST FAILED"
    exit
fi
