#!/bin/bash

# space for seperator
# 다른 곳은 space가 없어야 한다
MY_FIRST_LIST=(one two three four five)
echo $MY_FIRST_LIST 
# 이러면 첫번째 원소만 나온다

echo ${MY_FIRST_LIST[@]}
# 이러면 전체 원소 나오고

echo ${MY_FIRST_LIST[0]}
# 0번 인덱싱

for item in ${MY_FIRST_LIST[@]};
  do echo -n $item | wc -c;
  # echo -n
  # echo automatically adds a newline character (\n) at the end of the output.
  # -n이 없으면 그 additional한 space도 wc로 카운트된다
done

