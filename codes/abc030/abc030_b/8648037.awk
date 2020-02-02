# https://atcoder.jp/contests/abc030/submissions/8648037
{
    hr = $1 % 12
    mn = $2
    tz = 60 * hr + mn
    a = 360 * tz / 720
    a = a - 360 * mn / 60
    if (a < 0) a += 360
    if (a > 360) a -= 360
    if (a > 180) a = 360 - a
    printf("%.5f", a)
}
