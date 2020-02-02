# https://atcoder.jp/contests/abc096/submissions/8524882
function pow(n, m) {
    if (m == 0) return 1;
    return n * pow(n, m - 1)
}

NR==1{a=$1;b=$2;c=$3}
NR==2{
    x=a>b?a:b;x=x>c?x:c
    print a + b + c - x + x * pow(2, $1)
}
