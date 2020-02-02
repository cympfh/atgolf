# https://atcoder.jp/contests/abc086/submissions/8526051
{
    n=$1 $2
    a="No"
    for(i=1;i<500;++i)if(i*i==n)a="Yes"
    print a
}
