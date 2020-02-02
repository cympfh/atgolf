# https://atcoder.jp/contests/abc122/submissions/9361983
{
    s = $1
    n = length(s)
    ac = 0
    ans = 0
    for (i = 1; i <= n; ++i) {
        c = substr(s, i, 1)
        if (c ~ /[ATCG]/) {
            ac += 1
            ans = ans < ac ? ac : ans
        } else {
            ac = 0
        }
    }
    print ans
}
