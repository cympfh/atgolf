# https://atcoder.jp/contests/abc135/submissions/9662322

function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}

BEGIN {
    RS = "[ \n\t]"
    FS = "@"
}
NR==1{
    n = $1
    ans = "0"
}
NR>1&&NR<=n+2{
    a[NR-1] = $1
}
NR>n+2{
    i = NR - n - 2
    x = min($1, a[i])
    ans += x;
    $1 -= x;
    x = min($1, a[i+1])
    ans += x;
    a[i+1] -= x;
    del a[i];
}
END {
    printf "%.f\n", ans
}
