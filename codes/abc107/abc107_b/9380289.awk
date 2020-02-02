# https://atcoder.jp/contests/abc107/submissions/9380289
function at(s,i){return substr(s,i,1)}
function row_all_dot(i){
    for(j=1;j<=W;++j)if(at(f[i], j) != ".") return 0
    return 1
}
function col_all_dot(j){
    for(i=1;i<=H;++i)if(at(f[i], j) != ".") return 0
    return 1
}
NR==1 {
    H = $1
    W = $2
}
NR>1 {
    f[NR-1]=$0
}
END {
    for (a=1; a<=H; ++a) {
        if (row_all_dot(a)) continue
        line = ""
        for (b=1; b<=W; ++b) {
            if (col_all_dot(b)) continue
            line = line at(f[a], b)
        }
        print line
    }
}
