# https://atcoder.jp/contests/abc038/submissions/9505841
BEGIN {
    FS = "[ \n]"
    RS = "@"
}
{
    print $1 == $3 || $1 == $4 || $2 == $3 || $2 == $4 ? "YES" : "NO"
}
