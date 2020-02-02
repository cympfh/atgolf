# https://atcoder.jp/contests/abc091/submissions/8525270
NR==1{n=$1}
NR>1&&NR<=n+1{
    s[$1] += 1
}
NR==n+2{m=$1}
NR>n+2{
    s[$1] -= 1
}
END{
    ans=0
    for(w in s) {
        ans = ans > s[w] ? ans : s[w]
    }
    print ans
}
