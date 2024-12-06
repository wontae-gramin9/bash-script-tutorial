#!/bin/bash

# 변수 선언
# static value(텍스트나 숫자)를 할당할 때
FIRST_NAME=Wontae

# 명령어의 출력을 변수에 저장하려면
# Command Substitution $(...)을 사용한다

showuptime(){
  up=$(uptime -p | cut -c4-)
  # UPTIME: how long the system has been running and other system-related statistics
  # -p: human-readable format (up 2 days, 3 hours, 5 minutes)

  # CUT
  # Preprocessing, often used in conjunction with pipes to process command outputs
  # 4-: start from the 4th character and continue to the end of the line
  since=$(uptime -s)
  # -s: the date and time when the system was last booted

  cat << EOF
  ------
  This machine has been up for ${up}
  It has been running since ${since}
  -000
EOF
}

# bash는 js처럼 호이스팅이 안되니까, 함수 선언은 무조건 위에
# 딱히 js처럼 call할때 ()을 붙이지는 않네
showuptime

