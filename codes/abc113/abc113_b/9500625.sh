# https://atcoder.jp/contests/abc113/submissions/9500625
awk 'function abs(x){return x<0?-x:x}
NR>2{
    j=0
    m=10000000
    for(i=1;i<=NF;++i){
        tmp = abs(t-$i*0.006-a)
        if (tmp < m) {
            m = tmp
            j = i
        }
    }
    print j
}
{t=$1;a=$2}'
