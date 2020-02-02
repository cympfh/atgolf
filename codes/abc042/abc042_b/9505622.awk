# https://atcoder.jp/contests/abc042/submissions/9505622
NR==1{
    FS=RS
    RS=""
}
c++{
    for(i=0;i<100;++i){
        for(j=1;j<NF;++j){
            if ($j > $(j+1)) {
                tmp = $j
                $j = $(j+1)
                $(j+1) = tmp
            }
        }
    }
    s = ""
    for(j=1;j<=NF;++j){
        s = s $j
    }
    print s
}
