# 앞뒤에 공백의 space가 들어가야 한다
[ hello = hello ]
echo $? 
# $? = returns value of the exit code or the last executed command
# 0 means there's no problem

[ 1 = 0 ]
echo $?
# 1 means there was some problem

# eq- checks for numerical eqaulity
[ 1 -eq, 1 ]
echo $?
