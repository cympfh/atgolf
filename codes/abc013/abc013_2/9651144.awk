# https://atcoder.jp/contests/abc013/submissions/9651144

function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
NR==1{n=$1}
c++{
    print min(abs($1-n), min(abs($1-n+10), abs($1-n-10)))
}
