# https://atcoder.jp/contests/abc081/submissions/9644545
{
    a = 0
    while ($1 > 0) {
        a += $1 % 10
        $1 = int($1 / 10)
    }
    print a
}
