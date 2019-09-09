#!/bin/sh
CT="Content-Type:\ application/json"
 
TEST="curl -s http://localhost:9099"

RESPONSE=`$TEST`
#echo $RESPONSE

if [ "$RESPONSE" == "Hello World 2!" ]; then
    echo "PASSED"
else
    echo "FAILED"
fi

