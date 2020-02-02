# https://atcoder.jp/contests/abc112/submissions/9500659
awk '$1<r&&$2<=T{r=$1}NR<2{T=$2;r=1001}END{print r==1001?"TLE":r}'
