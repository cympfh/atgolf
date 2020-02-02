# https://atcoder.jp/contests/aising2019/submissions/8636781
NR==2{a=$1;b=$2}
NR>2{x=y=z=0;for(i=1;i<=NF;++i){if($i<=a)++x;if(a<$i&&$i<=b)++y;if($i>b)++z}x=x<y?x:y;print x<z?x:z}
