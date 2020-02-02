# https://atcoder.jp/contests/abc002/submissions/8561854
{
    x0 = $1
    y0 = $2
    x1 = $3
    y1 = $4
    x2 = $5
    y2 = $6
    s = (x1 - x0) * (y2 - y0) - (x2 - x0) * (y1 - y0)
    if (s<0) s=-s
    printf("%.4f", s/2)
}
