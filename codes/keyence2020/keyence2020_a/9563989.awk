# https://atcoder.jp/contests/keyence2020/submissions/9563989
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
BEGIN {
    FS = RS
    RS = "@"
}
{
    k = max($1, $2)
    print int(($3 + k - 1) / k)
}
