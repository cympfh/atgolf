# https://atcoder.jp/contests/abc057/submissions/8537573
function min(x,y){return x<y?x:y}
function max(x,y){return x>y?x:y}
function abs(x){return x<0?-x:x}
function pow(n,m){return m<0?1/pow(n,-m):m==0?1:(z=pow(n,int(m/2)))*z*((n-1)*(m%2)+1)}
function reverse(s){t="";for(i=length(s);i>0;)t=t substr(s,i--,1);return t}
NR == 1 {
    n = $1
    m = $2
}
NR > 1 && NR < n + 2 {
    a[NR-1]=$1
    b[NR-1]=$2
}
NR > n + 1 {
    c[NR-n-1] = $1
    d[NR-n-1] = $2
}
END {
    for (i=1; i<=n; ++i) {
        idx = 1
        mind = 1000000000000
        for (j=1; j<=m; ++j) {
            dist = abs(a[i] - c[j]) + abs(b[i] - d[j])
            # print(i, j, "dist", dist, ":", a[i],c[j],b[i],d[j])
            if (dist < mind) {
                mind = dist
                idx = j
            }
        }
        print idx
    }
}
