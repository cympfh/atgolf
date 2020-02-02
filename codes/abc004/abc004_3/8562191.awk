# https://atcoder.jp/contests/abc004/submissions/8562191
{
    n = $1 % 30
    for (i=0;i<6;++i) a[i] = i+1
    for (i=0;i<n;++i) {
        j = i % 5
        tmp = a[j]
        a[j] = a[j + 1]
        a[j + 1] = tmp
    }
    print a[0]a[1]a[2]a[3]a[4]a[5]
}
