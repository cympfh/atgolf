# https://atcoder.jp/contests/abc109/submissions/9779515
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
BEGIN {
    RS="[ \n]"
}
NR==2{
    x = $0
    g = 0
}
NR>2{
    g = gcd(g, abs($0 - x))
}
END {
    printf "%.f\n", g
}
