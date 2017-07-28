#!/bin/bash

name=$1
echo "File name" $name

echo `pwd`
echo `find *.*`
touch "fiels.txt"
echo `find *.*` >> files.txt
