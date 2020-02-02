# https://atcoder.jp/contests/abc132/submissions/9500074
awk 'i++{for(;i<NF;)($i-$--i)*($++i-$++i)<0&&++a;print+a}'
