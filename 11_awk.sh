#!/bin/bash

# 파일/입력 데이터의 모든 줄에 개별적으로
# 특정 조건에 따라 데이터를 필터링/출력 가능
# 입력 데이터를 space로 구분해서 (구분된 chunk를 field라고 험) 처리
# 정규표현식/조건문 사용 가능

# 특정 필드 추출
echo "Alice 30 Engineer" | awk '{print $1}'

# 조건부 출력
awk '$3 == "Engineer" {print $1}' awkfile.txt
# 각 줄의 세 번째 필드가 "Engineer"인지 확인하고
# 조건을 만족하는 줄에서 첫 번째 필드($1)만 출력

# -F 옵션으로 separator를 ,로 바꿔주기
awk -F, '{print $1}' awkcsv.csv
echo "Just get this word: Hello" | awk -F: '{print $2}' | cut -c2-