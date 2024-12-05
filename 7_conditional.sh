#!/bin/bash

if [ ${1,,} = wontae ] ; then
  echo "Oh, you're the boss here. Welcome!"
elif [ ${1,,} = help ] ; then
  echo "Enter your usernmae"
else
  echo "You're not the boss"
fi 

# if [] ← if + test command
# ${1,,} = first positional argument

# $1 means first command line arg
# {arg,,} ← parameter expansion converting to lowecase
# if $1 is WONTAE, it becomes wontae

case ${1,,} in
  # OR | 
  wontae | administrator) 
    echo "You're the boss here."
    ;; # means break
  help)
    echo "Enter your usernmae"
    ;; 
  *) # catch all (default)
    echo "You're not the boss"
    ;; 
esac # close case statement with case reverted
