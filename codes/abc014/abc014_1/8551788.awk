# https://atcoder.jp/contests/abc014/submissions/8551788
NR==1{n=$1}
NR==2{
    m=$1
    print(int((n + m - 1) / m) * m - n)
}
