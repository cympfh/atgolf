# https://atcoder.jp/contests/abc059/submissions/8537403
{
    for(i=0;i<26;++i)a[sprintf("%c",i+97)]=sprintf("%c",i+65)
    print a[substr($1,1,1)] a[substr($2,1,1)] a[substr($3,1,1)]
}
