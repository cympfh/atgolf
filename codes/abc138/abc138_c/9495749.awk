# https://atcoder.jp/contests/abc138/submissions/9495749
NR>1{
    for(i=1;i<100;++i) {
        for(j=1;j<NF;++j) {
            if ($j > $(j+1)) {
                tmp = $j
                $j = $(j+1)
                $(j+1) = tmp
            }
        }
    }
    ans = $1
    for(j=1; j<=NF; ++j) {
        ans = (ans + $j) / 2
    }
    print ans
}
