# https://atcoder.jp/contests/abc123/submissions/9671250

function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}

BEGIN {
    FS = RS
    RS = "@"
}
{
    a = min($2, min($3, min($4, min($5, $6))))
    ans = int(($1 + a - 1) / a) + 4
    printf "%.f", ans
}
