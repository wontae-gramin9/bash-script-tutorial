# Output Redirection

# >  : (OVER)write to a file
# >> : append to a file

echo Hello World! > hello.txt
echo My name is Wontae >> hello.txt

# Example use case

# Logging to a logfile (using timestamps)
# Dynamically creating (config) files


# Input Redirection
# 명령어의 입력을 키보드가 아닌 특정 파일에서 가져오는 것

# <  : Get input from a file
# << : append to a file

# Example use case

# 1. 파일 내용을 명령어에 입력하기
command < hello.txt
# command든 입력을 필요로하는 명령이고, hello.txt의 내용을 입력하겠다는 것
# 2. cat 명령어

cat hello.txt # 파일 이름을 직접 전달해서 파일의 내용을 읽는다
cat < hello.txt # 파일의 내용을 읽어서 출력함. 결과는 위와 같다

# wc: newline count, word count, and byte count
# 기본적으로 filename을 같이 보여주는데, count만 보고싶다면?
wc < hello.txt
# hello.txt의 내용을 읽어서 wc -w에 전달하기 때문에 hello.txt의 파일명이 나오지 않는다

touch sortedHello.txt
sort < hello.txt > sortedHello.txt
cat sortedHello.txt

# <<는 EOF(end of file)
# 여러 줄의 입력 데이터를 하나의 명령어로 전달
# 와 같이 사용새서 input내용을 전달할 때 사용

cat << EOF
I will 
write some
text here
EOF
# EOF로 끝내줘야 함

# <<<는 한 줄의 문자열을 입력으로 전달함
grep "pattern" <<< "This is test string"
