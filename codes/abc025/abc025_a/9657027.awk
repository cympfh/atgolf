# https://atcoder.jp/contests/abc025/submissions/9657027
NR==1 {
    for(i=0;i<25;++i){
        t[i] = substr($1, int(i/5)+1, 1) substr($1, i%5+1, 1)
    }
}
NR==2 {
    print t[$1-1]
}
