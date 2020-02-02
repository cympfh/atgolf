# https://atcoder.jp/contests/abc075/submissions/9651231
NR==1{
    H=$1
    W=$2
}
NR>1{
    f[NR-1]=$0
}
function isb(i, j) {
    if (i <= 0 || j <= 0 || i > H || j > W) return 0
    return substr(f[i], j, 1) == "#"
}
END {
    for (i=1;i<=H;++i) {
        line = ""
        for (j=1;j<=W;++j) {
            c = substr(f[i], j, 1);
            if (c == "#") {
                line = line c
                continue
            }
            n = 0
            n += isb(i+1,j)
            n += isb(i+1,j+1)
            n += isb(i+1,j-1)
            n += isb(i,j+1)
            n += isb(i,j-1)
            n += isb(i-1,j)
            n += isb(i-1,j+1)
            n += isb(i-1,j-1)
            line = line n
        }
        print line
    }
}
