# https://atcoder.jp/contests/abc006/submissions/8562359
{
    n = $1
    m = $2
    a = -1
    b = -1
    c = -1
    for (i = 0; i <= n; ++i) {
        if (m-n-n-i-i < 0) break;
        if (n+n+n-m+i < 0) continue;
        a = n+n+n-m+i;
        b = m-n-n-i-i;
        c = i;
        break;
    }
    print(a " " b " " c)
}
