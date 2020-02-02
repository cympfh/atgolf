# https://atcoder.jp/contests/abc088/submissions/9497166
c++{
    for(i=0;i<100;++i){
        for(j=1;j<NF;++j){
            if($j<$(j+1)){
                tmp=$j
                $j=$(j+1)
                $(j+1)=tmp
            }
        }
    }
    a=0
    for(i=1;i<=NF;++i){
        a += $i * (i%2 ? 1 : -1)
    }
    print a
}
