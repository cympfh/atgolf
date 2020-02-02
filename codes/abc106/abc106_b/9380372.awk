# https://atcoder.jp/contests/abc106/submissions/9380372
function yakusu(x) {
    r = 0
    for (i=1; i*i<=x; ++i) if (x % i == 0) r += i*i == x ? 1 : 2
    return r
}
{
    for(x=1;x<=$1;x+=2) if(yakusu(x)==8) a++
    print+a
}
