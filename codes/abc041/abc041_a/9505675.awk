# https://atcoder.jp/contests/abc041/submissions/9505675
BEGIN {
    FS = RS
    RS = ""
}
{
    print substr($1, $2, 1)
}
