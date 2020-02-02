# https://atcoder.jp/contests/abc123/submissions/9500561
awk 'function rest(z) {
    return int((z + 9) / 10) * 10 - z
}
BEGIN {
    FS = RS
    RS = ""
}
{
    for (i=1; i<6; ++i) {
        for (j=1; j<5; ++j) {
            if (rest($j) > rest($(j+1))) {
                tmp = $j
                $j = $(j+1)
                $(j+1) = tmp
            }
        }
    }
    for(i=1;i<5;++i)a+=rest($i)
    for(i=1;i<6;++i)a+=$i
    print a
}'
