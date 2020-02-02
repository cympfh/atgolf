# https://atcoder.jp/contests/abc058/submissions/9645249
BEGIN{FS=RS;RS="@"}
{
    n = length($1);
    line = ""
    for (i = 1; i <= n; ++i) {
        line = line substr($1, i, 1) substr($2, i, 1)
    }
    print line
}
