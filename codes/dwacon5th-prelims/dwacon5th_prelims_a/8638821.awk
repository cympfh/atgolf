# https://atcoder.jp/contests/dwacon5th-prelims/submissions/8638821
function abs(x) { return x < 0 ? -x : x }
NR==1{n=$1}
NR==2{
    s = 0
    for (i=1;i<=n;++i) s += $i
    ans = 0
    d = abs(s - $1 * n)
    for (i=2;i<=n;++i) {
        f = abs(s - $i * n)
        if (f < d) {
            d = f
            ans = i - 1
        }
    }
    print ans
}
