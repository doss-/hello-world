#!/bin/bash

result=$( apk info -e ruby )

#check if not empty
if [ -z "$result" ]
then 
	echo ruby not found
	apk add ruby
else
	echo ruby is installed
fi

#TODO: not the best check actually, need to tighten the output to 1 line that i need
rspecCheck=$( gem list --local | grep rspec )

#check if not empty
if [ -z "$rspecCheck" ]
then
	echo "RSpec not found"
	gem install rspec -v 3.4.0
else
	echo "RSpec is installed"
fi
