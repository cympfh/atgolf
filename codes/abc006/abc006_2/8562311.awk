# https://atcoder.jp/contests/abc006/submissions/8562311
{
    a = 0
    b = 0
    c = 1
    for($1--;$1--;){
        d = a + b + c
        a = b
        b = c
        c = d % 10007
    }
    print a
}
