# https://atcoder.jp/contests/abc152/submissions/9633477
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
NR == 1 {
    last = $1 + 10
    ans = 0
    RS=FS
    FS="@"
}
NR > 1 {
    if (last > $1) {
        ans++
    }
    last = min(last, $1)
}
END {
    print ans
}
