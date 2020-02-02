# https://atcoder.jp/contests/abc142/submissions/9649150
NR==1{
    RS="[ \t\r\n]"
    FS="@"
    n = $1
}
NR>1{
    xs[$1] = NR-1;
}
END {
    printf "%d", xs[1];
    for (i = 2; i <= n; ++i) {
        printf " %d", xs[i];
        del xs[i];
    }
    print "";
}
