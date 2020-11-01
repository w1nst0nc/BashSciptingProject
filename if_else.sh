#The purpose of this block is to demonstrate the affecs of creating an if else scenerio 
#An interesting part of this code is the command "echo" which gives the same effect as "S.out" does for java. 


#!/bin/bash

num_a=400
num_b=200

if [ $num_a -lt $num_b ]; then
 echo "$num_a is less than $num_b!"
else
 echo "$num_a is greater than $num_b!"

fi
