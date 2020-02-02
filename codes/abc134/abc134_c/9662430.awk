# https://atcoder.jp/contests/abc134/submissions/9662430

function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}

NR==1{
    n=$1
    FS=RS
    RS="@"
}
NR>1{
    split($0, xs)
    top1 = max(xs[1], xs[2]);
    top2 = min(xs[1], xs[2]);
    for (i = 3; i <= n; ++i) {
        if (xs[i] > top1) {
            top2 = top1
            top1 = xs[i]
        } else if (xs[i] > top2) {
            top2 = xs[i]
        }
    }
    for (i = 1; i <= n; ++i) {
        print (xs[i] == top1) ? top2 : top1
    }
}
