# https://atcoder.jp/contests/abc139/submissions/9499931
awk 'c++{for(;i++<3;)substr(s,i,1)==substr($1,i,1)&&++a;print +a}{s=$1}'
