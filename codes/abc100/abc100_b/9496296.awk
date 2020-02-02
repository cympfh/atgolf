# https://atcoder.jp/contests/abc100/submissions/9496296
function abs(x){return x<0?-x:x}
function max(x,y){return x<y?y:x}
function min(x,y){return x>y?y:x}
{
    d = $1
    n = $2
    m0 = 100 ^ d
    m1 = 100 ^ (d + 1)
    for (i=1; i < 2000000; ++i) {
        if (i % m0 == 0 && i % m1 != 0) {
            n--;
            if (n == 0) {
                print i
                exit
            }
        }
    }
}
