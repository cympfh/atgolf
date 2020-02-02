# https://atcoder.jp/contests/abc024/submissions/9657104
NR==1{
    a=$1
    b=$2
    c=$3
    k=$4
}
NR==2{
    print $1*a+$2*b-($1+$2>=k ? ($1+$2)*c : 0)
}
