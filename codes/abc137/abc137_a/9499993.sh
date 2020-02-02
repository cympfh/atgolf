# https://atcoder.jp/contests/abc137/submissions/9499993
awk '{
a=$1
b=$2
c=$3
x=a+b
y=a-b
z=a*b
x=x>y?x:y
x=x>z?x:z
print x
}'
