# https://atcoder.jp/contests/cf16-final-open/submissions/8647900
{
    n = $1
    for(i=1; i*(i+1)<n*2; ++i);
    v = i * (i + 1) / 2 - n
    for(j=1;j<=i;++j)if(j!=v)print(j)
}
