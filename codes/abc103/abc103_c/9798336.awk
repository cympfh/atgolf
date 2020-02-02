# https://atcoder.jp/contests/abc103/submissions/9798336
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
NR==1{
}
NR>1{
    s=0
    for(i=1;i<=NF;++i) s+=$i-1
    print s
}
END{
}
