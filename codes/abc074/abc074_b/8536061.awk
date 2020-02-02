# https://atcoder.jp/contests/abc074/submissions/8536061
function min(x,y){return x<y?x:y}
NR<2{n=$1}NR==2{k=$1}NR>2{
    ans = 0
    for(i=1; i<=n; ++i) ans += 2 * min($i, k - $i)
    print(ans)
}
