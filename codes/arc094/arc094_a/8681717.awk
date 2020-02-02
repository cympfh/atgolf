# https://atcoder.jp/contests/arc094/submissions/8681717
{
s=$1+$2+$3
a=1000
for(i=0;i<53;++i){
if(i<$1||i<$2||i<$3) continue
r=3*i - s
if(r %2 == 0 && a>r/2)a=r/2
}
print a
}
