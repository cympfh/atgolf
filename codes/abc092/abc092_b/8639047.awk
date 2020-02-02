# https://atcoder.jp/contests/abc092/submissions/8639047
NR==1{n=$1}
NR==2{d=$1;x=$2}
NR>2{for(i=1;i<=d;i+=$1)x++}
END{print x}
