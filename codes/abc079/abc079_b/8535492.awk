# https://atcoder.jp/contests/abc079/submissions/8535492
{
    a0=2;a1=0;
    b0=1;b1=0;
    m = 1000000000
    for (i=0; i<$1; ++i) {
        c0 = a0 + b0; c1 = a1 + b1
        a0 = b0; a1 = b1
        b0 = c0 % m
        b1 = c1 + int(c0 / m)
    }
    if (a1 == 0) {
        print a0
    } else {
        printf("%d%09d\n", a1, a0)
    }
}
