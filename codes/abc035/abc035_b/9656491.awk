# https://atcoder.jp/contests/abc035/submissions/9656491

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
    x = 0
    y = 0
    q = 0
    for (i = 1; i <= length($1); ++i) {
        c = substr($1, i, 1)
        if (c == "U") {
            x++
        } else if (c == "D") {
            x--
        } else if (c == "L") {
            y--
        } else if (c == "R") {
            y++
        } else {
            q++
        }
    }
    x = abs(x)
    y = abs(y)
    if ($2 == 1) {
        d = abs(x+q) + y
        d = max(d, abs(x-q) + y)
        d = max(d, x + abs(y+q))
        d = max(d, x + abs(y-q))
        print d
    } else {
        dq = min(x, q)
        x -= dq
        q -= dq
        dq = min(y, q)
        y -= dq
        q -= dq
        if (q > 0) {
            x += q % 2
        }
        print abs(x) + abs(y)
    }
}
