# https://atcoder.jp/contests/abc097/submissions/9644501
function max(x,y){return x<y?y:x}
{
    x = $1
    ans = 1
    for (b = 2; b <= x; ++b) {
        bp = b
        for (p = 1; bp <= x; ++p) {
            bp *= b;
            if (bp > x) break;
            ans = max(ans, bp);
        }
    }
    print ans
}
