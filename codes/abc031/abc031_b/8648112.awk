# https://atcoder.jp/contests/abc031/submissions/8648112
NR==1{l=$1;r=$2}
NR==2{n=$1}
NR>2{
    if (l > $1) {
        print(l - $1)
    } else if (r < $1) {
        print(-1)
    } else {
        print(0)
    }
}
