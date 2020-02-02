# https://atcoder.jp/contests/abc152/submissions/9633220
{
    if ($1>$2) {
        a = $1
        b = $2
    } else {
        a = $2
        b = $1
    }
    line = ""
    for (;i<a;++i) line = line b
    print line
}
