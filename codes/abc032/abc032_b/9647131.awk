# https://atcoder.jp/contests/abc032/submissions/9647131
c++{
    n = $1
    for (i = 1; i <= length(s) - n + 1; ++i) {
        t[substr(s, i, n)]=1
    }
    for (k in t) ++a;
    print+a
}
{s=$1}
