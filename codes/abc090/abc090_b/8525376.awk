# https://atcoder.jp/contests/abc090/submissions/8525376
function is_kaibun(n) {
    s = "" n
    m = length(s)
    for (i=1; i<=m; ++i) if (substr(s, i, 1) != substr(s, m-i+1, 1)) return 0;
    return 1
}
{
    ans=0
    for(x=$1;x<=$2;++x)if(is_kaibun(x))ans++
    print ans
}
