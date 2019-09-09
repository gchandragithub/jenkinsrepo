#!/bin/sh
CT="Content-Type:\ application/json"
 
TEST="curl -s http://localhost:8088"

RESPONSE=`$TEST`

if [ "$RESPONSE" == "Hello World 2!" ]; then
    echo "PASSED"
else
    echo "FAILED"
fi
