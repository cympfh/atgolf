# https://atcoder.jp/contests/abc087/submissions/9497291
BEGIN{FS=RS;RS=""}
{
    for (i=0;i<=$1;++i) {
        for (j=0;j<=$2;++j) {
            for (k=0;k<=$3;++k) {
                if (500 * i + 100 * j + 50 * k == $4) ++a
            }
        }
    }
    print+a
}
