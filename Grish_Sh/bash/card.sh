#!/bin/bash

Grish=$login
1234=$pass
100 000=$hashiv

echo -n "Enter your name:::"
read name 
login=$name

echo -n "Password:"
read :
Pass=$:



if [[ $name == $login ]] &&  [[ $pass == $: ]]  then 
echo $hashiv

else



