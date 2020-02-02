# https://atcoder.jp/contests/abc107/submissions/9797578
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
BEGIN {
    RS = "[ \n]"
    FS = "@"
    num_left = 0
    num_right = 0
}
NR==1{
    n = +$1
}
NR==2{
    k = +$1
}
NR>2{
    if ($0 < 0) {
        num_left++;
        xs[num_left] = +$0
    } else if ($0 == 0) {
        --k;
    } else {
        num_right++;
        ys[num_right] = +$0;
    }
}
END {
    if (k <= 0) {
        print 0
        exit
    }
    ans = 100000000000
    xs[num_left+1] = 0;
    ys[0] = 0;
    for (i = 0; i <= k; ++i) {
        if (i > num_left) continue;
        if (k - i > num_right) continue;
        x = abs(xs[num_left + 1 - i])
        y = ys[k-i];
        ans = min(ans, x + y + min(x, y));
    }
    print ans
}
