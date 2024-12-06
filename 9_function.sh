#!/bin/bash

FIRST_NAME=Wontae

up="before"
since="function"
echo $up
echo $since

showuptime(){
  local up=$(uptime -p | cut -c4-)
  local since=$(uptime -s)

  cat << EOF
  ------
  This machine has been up for ${up}
  It has been running since ${since}
  -000
EOF
}

showuptime

echo $up
echo $since