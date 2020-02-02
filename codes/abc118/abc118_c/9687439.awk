# https://atcoder.jp/contests/abc118/submissions/9687439
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
NR==1{
    n = $1
}
NR==2{
    split($0, xs);
    g = 0;
    for (i = 1; i <= n; ++i) g = gcd(g, xs[i]);
    print g
}
