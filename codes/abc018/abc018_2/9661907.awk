# https://atcoder.jp/contests/abc018/submissions/9661907
NR == 1 {
    m=length($1);
    for(i=1;i<=length($1);++i) s[i]=substr($1,i,1);
}
NR>2{
    l = $1
    r = $2
    for (k = 0; k < r - l; ++k) {
        i = l + k
        j = r - k
        if (i < j) {
            t=s[i];s[i]=s[j];s[j]=t
        }
    }
}
END {
    line = ""
    for (k=1;k<=m;++k) line=line s[k]
    print line
}
