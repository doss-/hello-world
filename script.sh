#!/bin/bash

hello=Hello
world=World

echo 'about to execute: $hello $world'
echo "$hello $world"


echo "lets concatenate $hello$world"

echo "now file is called $0"

size=$( du .git -sh )

echo "size of .git folder is ${size:0:3}"

echo 'hotfix stuff'
echo some iss53 related things
echo end of iss53 related things
