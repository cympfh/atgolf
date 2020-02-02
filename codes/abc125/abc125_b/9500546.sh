# https://atcoder.jp/contests/abc125/submissions/9500546
awk 'c>1{for(;i++<=NF;)a+=$i<x[i]?x[i]-$i:0;print+a}
c++{split($0,x)}'
