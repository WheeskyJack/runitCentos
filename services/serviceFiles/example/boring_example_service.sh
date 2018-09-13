#!/bin/bash

echo "Started Very boring service..."

for i in {1..10}
do
    echo "This service is boring ... $i"
    sleep 2
done
echo "You are so boring ..."
sleep 1
echo "This is interesting..." >&2
sleep 1
echo "I am shutting down..." >&2
exit 1
