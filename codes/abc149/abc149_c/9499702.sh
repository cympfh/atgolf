# https://atcoder.jp/contests/abc149/submissions/9499702
awk 'function isp(x) {
for (i=2; i*i<=x;i++)if(x%i==0) return 0
return 1
}

{
for(x=$1;;x++) if(isp(x)) {
print x
break
}
}'
