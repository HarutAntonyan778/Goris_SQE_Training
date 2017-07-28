#!/bin/bash

a=686
b=228.35
c=`echo $a + $b | bc`
echo "$c"

mutq1=$1
mutq2=$2

echo "First Argumen " $mutq1
echo "Second Argument " $mutq2

if [[ "$1" =~ ^[0-9]+$ ]]; then
  echo "first argument is a number"
else
  echo "first argument isn't a number"
  exit
fi

if [[ "$2" =~ ^[0-9]+$ ]]; then
  echo "second argument is a number"
else
  echo "second argument isn't a number"
  exit
fi


#if [[ "$1" =~ ^[0-9]+$ ]] && [[ "$2" =~ ^[0-9]+$ ]]; then
#
#echo "I have calculated the numbers" >&2
# 
#else
#exit
#fi

	
x=$1
y=$2
ans=$(( x + y ))
echo "$x + $y = $ans"

x=$1
y=$2
ans=$(( x - y ))
echo "$x - $y = $ans"

x=$1
y=$2
ans=$(( x * y ))
echo "$x * $y = $ans"

x=$1
y=$2
ans=$(( x / y ))
echo "$x / $y = $ans"


















