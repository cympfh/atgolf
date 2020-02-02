# https://atcoder.jp/contests/abc128/submissions/9500256
awk 'c++{printf "%s %03d %d\n",$1,100-$2,NR-1}' | sort | awk '{print $3}'
