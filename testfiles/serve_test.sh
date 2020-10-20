#!/bin/bash

res=$(curl -X GET http://docker:8000/)
test="<title>Home - Test Docs</title>"

#get the response with cURL and judge if it is as we expected
if [[ $res =~ $test ]] ;
then
  echo "...[SUCCESS]Producing and Serving Test has been completed."
  exit 0
else
  echo "...[ERROR]Some Errors have occurred."
  exit 1
fi