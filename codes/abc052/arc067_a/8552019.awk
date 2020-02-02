# https://atcoder.jp/contests/abc052/submissions/8552019
{
    for (m = 2; m <= $1; ++m) {
        x = m
        for (p=2; x>1; p++){
            for (;x % p == 0;) {
                div[p]++
                x /= p
            }
        }
    }
    ans = 1
    for (p in div) {
        ans *= div[p] + 1
        ans %= 1000000007
    }
    print ans
}
