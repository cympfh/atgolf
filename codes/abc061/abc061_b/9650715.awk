# https://atcoder.jp/contests/abc061/submissions/9650715
NR==1{n=$1}
c++{f[$1]++;f[$2]++}
END{
    for(i=1;i<=n;++i)print+f[i]
        }
