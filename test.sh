#!/bin/bash

result=$( apk info -e ruby )

if [ -z "$result" ]
then 
	echo ruby not found
	apk add ruby
else
	echo ruby is installed
fi
