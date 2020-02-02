# https://atcoder.jp/contests/abc138/submissions/9499976
awk 'NR==1{n=$1}
NR==2{for(i=1;i<=n;i++)s+=1/$i;printf("%.10f", 1/s)}'
