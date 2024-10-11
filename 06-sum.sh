#!/bin/bash

firstnumber=$1
secondnumber=$2

SUM=$(($firstnumber+$secondnumber))

echo "Orey the sum is: $SUM"

echo "how many arguments passed to script: $#"
echo "all arguments passwd to script: $@"
echo "first argument passwd: $1"
echo "script name: $0"
echo "exit code: $?"
echo "last argument: $N"
echo "all arguments passwd to script: $*"