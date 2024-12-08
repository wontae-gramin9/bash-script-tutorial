#!/bin/bash

# 텍스트의 검색과 치환 작업에 사용됨
# 정규표현식을 주로 사용
# 파일&입력 데이터의 내용을 한 줄씩 읽어서 수정&출력

# s 명령어: 가장 많이 쓰는 substitute
# s/패턴/치환할_텍스트/플래그

# g 플래그: global
# 한 줄에서 모든 일치 항목을 치환 
sed 's/fly/grasshopper/g' sedfile.txt

# gi: 대소문자 구분없이 검색

# g 플래그가 없다면, 기본적으로 첫번쨰로 일치하는 항목만 치환
# w file: 치환된 내용을 지정한 파일에 저장
echo "foo foo foo" | sed 's/foo/bar/w sedoutput.txt'

# 1, 2 플래그: 첫번째/두번째 일치항목만 치환
# 인덱싱이 0부터네...
echo "foo foo foo" | sed 's/foo/bar/1'
echo "foo foo foo" | sed 's/foo/bar/2'

# -i: 파일내용을 원본에 바로 저장(Default)
# -i.backupfile: 백업파일 만들기
# -i의 파일은 오리지널의 백업을 만들고, sedfile.txt엔 치환된 output이
sed -i.ORIGINAL 's/fly/grasshopper/g' sedfile.txt
