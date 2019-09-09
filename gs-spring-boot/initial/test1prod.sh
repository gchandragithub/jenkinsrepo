#!/bin/sh
CT="Content-Type:\ application/json"
 
TEST="curl -s http://localhost:9099"

RESPONSE=`$TEST`

if [ "$RESPONSE" == "Hello World 1!" ]; then
    echo "PASSED"
else
    echo "FAILED"
fi
