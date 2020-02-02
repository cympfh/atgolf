# https://atcoder.jp/contests/abc025/submissions/9657078

function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
NR==1{
    a=$2
    b=$3
    x=0
}
NR>1{
    if ($1=="East") {
        x += max(a, min(b, $2))
    } else {
        x -= max(a, min(b, $2))
    }
}
END {
    if (x > 0) {
        print "East",x
    } else if (x < 0) {
        print "West",-x
    } else {
        print 0
    }
}
