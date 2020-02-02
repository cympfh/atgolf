# https://atcoder.jp/contests/abc137/submissions/9499995
awk '{
k=$1
x=$2
for(i=x-k+1;i<k+x;i++)print i
}'
