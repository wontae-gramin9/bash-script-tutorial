#!/bin/bash
showname(){
  echo hello $1
  if [ ${1,,} = wontae ]; then
    return 0
  else
    return 1
  fi
}

showname $1
# wontae에서 $1로 바꾸면 command line arguments에서 받는
# positional argument가 된다

if [ $? -ne 0 ]; then
  # $?: 가장 마지막에 실행된 코드(여기서는 showname함수)
  # 의 exit status를 가진다
  # 0은 에러없이 성공적으로 실행
  # 비0은 에러(실패)

  echo "Someone unknown called the function"
fi