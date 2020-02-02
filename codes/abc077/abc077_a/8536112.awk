# https://atcoder.jp/contests/abc077/submissions/8536112
NR<2{s=$1}
NR>1{print substr($1,3,1) substr($1,2,1) substr($1,1,1)==s ? "YES" : "NO"}
