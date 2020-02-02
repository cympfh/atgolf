# https://atcoder.jp/contests/abc012/submissions/9651114
{
    sec = $1 % 60
    $1 = int($1/60)
    min = $1 % 60
    $1 = int($1/60)
    printf "%02d:%02d:%02d", $1, min, sec
}
