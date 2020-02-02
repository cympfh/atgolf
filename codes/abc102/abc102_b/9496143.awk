# https://atcoder.jp/contests/abc102/submissions/9496143
function abs(x){return x<0?-x:x}
function max(x,y){return x<y?y:x}
c++{
    ans = abs($1 - $2)
    for(i=1;i<=NF;++i)
        for(j=1;j<i;++j)
        ans=max(ans,abs($i-$j))
    print ans
}
