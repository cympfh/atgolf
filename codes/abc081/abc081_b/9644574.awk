# https://atcoder.jp/contests/abc081/submissions/9644574

function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}

function f(x) {
    if (x % 2 == 0) return 1 + f(x / 2);
    return 0
}
NR == 1 {
    ans = 1000000000
    RS=FS
    FS="@"
}
NR > 1 {
    ans = min(ans, f($1))
}
END {
    print ans
}
