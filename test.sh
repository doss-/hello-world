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
	gem install rdoc
	gem install rspec -v 3.4.0
	gem install rspec_junit_formatter
else
	echo "RSpec is installed"
fi

#update ruby gems to latest version. 
#it does not help with rdoc 'reset' missing error. probably some Alpine linux issue
#apk add ruby-json
#gem install rubygems-update
#gem update --system

#junit formatting for jenkins from rspec
#gem install rspec_junit_formatter
# call tests to be saved into xml
#rspec --format RspecJunitFormatter --out rspec.xml ri20min_spec.rb
