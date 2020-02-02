# https://atcoder.jp/contests/abc048/submissions/8561704
{
    a = $1
    b = $2
    x = $3
    if (a == 0) {
        ("echo $(( 1 + " b " / " x " ))") | getline
    } else {
        ("echo $(( "b" / "x" - ( "a" - 1) / "x" ))") | getline
    }
    print
}
