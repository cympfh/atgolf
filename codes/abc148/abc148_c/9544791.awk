# https://atcoder.jp/contests/abc148/submissions/9544791
function gcd(x, y) {
    if (y == 0) return x;
    return gcd(y, x % y)
}
{
    printf "%.0f", ($1 / gcd($1, $2) * $2)
}
