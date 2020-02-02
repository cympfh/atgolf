# https://atcoder.jp/contests/abc151/submissions/9499577
awk '{for(;i<200;)a[sprintf("%c",i++)]=sprintf("%c",i)}$0=a[$1]'
