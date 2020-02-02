# https://atcoder.jp/contests/abc056/submissions/8551739
function max(x,y){return x<y?y:x}
{
    w = $1
    a = $2
    b = $3
    print max(max(0, b - a - w), max(0, a - b - w))
}
