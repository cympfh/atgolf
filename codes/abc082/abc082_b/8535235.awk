# https://atcoder.jp/contests/abc082/submissions/8535235
function sort(s){
    n=length(s)
    for(i=1;i<=n;++i)a[substr(s,i,1)]+=1;
    t=""
    for (j=97;j<123;++j) {
        k=sprintf("%c",j)
        for(i=0;i<a[k];++i)t=t k
    }
    for(i=1;i<=n;++i)a[substr(s,i,1)]=0;
    return t
}
function reverse(s){
    n=length(s)
    t=""
    for(i=n;i>0;--i)t=t substr(s,i,1)
    return t
}
NR==1{u=sort($1)}
NR==2{v=reverse(sort($1))}
END{print u < v ? "Yes" : "No"}
