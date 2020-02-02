# https://atcoder.jp/contests/yahoo-procon2019-qual/submissions/8636487
{a[$1]++;a[$2]++}
END{
for(i=1;i<5;++i)b[a[i]]++
print(b[1]==2&&b[2]==2)?"YES":"NO"
}
