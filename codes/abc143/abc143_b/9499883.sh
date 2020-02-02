# https://atcoder.jp/contests/abc143/submissions/9499883
awk 'NR==1{n=$1}
NR==2{ac=$1
ans=0
for(i=2;i<=n;i++){ans+=ac * $i; ac += $i}
print ans
}'
