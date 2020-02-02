# https://atcoder.jp/contests/abc127/submissions/9670572
NR==1{
    n=$1
    m=$2
    for(i=0;i<=n+10;++i)g[i]=0;
}
NR>1{
    g[$1]++;
    g[$2+1]--;
}
END {
    ac = 0
    ans = 0
    for (i=1; i<=n; ++i) {
        ac += g[i];
        if (ac == m) ++ans;
    }
    print ans
}
