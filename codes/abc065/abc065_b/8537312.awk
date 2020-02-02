# https://atcoder.jp/contests/abc065/submissions/8537312
NR==1{n=$1}
NR>1{a[NR-1]=$1;v[NR-1]=0}
END{
    ans=0
    cur=1
    for(;;){
        cur = a[cur]
        ans++
        if (cur == 2) break
        if (v[cur] == 1) {
            ans = -1
            break
        }
        v[cur]=1
    }
    print ans
}
