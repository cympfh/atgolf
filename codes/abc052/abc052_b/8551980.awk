# https://atcoder.jp/contests/abc052/submissions/8551980
NR>1{
a=0
for(i=1;i<=length($1);++i){
x+=substr($1,i,1)=="I"?1:-1
a=a>x?a:x
}
print(a)
}
