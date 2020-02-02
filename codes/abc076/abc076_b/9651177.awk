# https://atcoder.jp/contests/abc076/submissions/9651177
BEGIN {
    FS = RS
    RS = "@"
}
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
{
    c = 1;
    for(i=0;i<$1;++i) {
        c = min(c*2,c+$2)
    }
    print +c
}
