# https://atcoder.jp/contests/abc040/submissions/9505800
{
    ans = $1
    for (h=1; h <= $1; ++h) {
        w = int($1 / h)
        rest = $1 - h * w
        diff = h > w ? h - w : w - h
        f = diff + rest
        ans > f && ans = f
    }
    print ans
}
