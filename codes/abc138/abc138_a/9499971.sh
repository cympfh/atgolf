# https://atcoder.jp/contests/abc138/submissions/9499971
awk 'NR==1{s=$1}
NR==2{print (s<3200) ? "red" : $1}'
