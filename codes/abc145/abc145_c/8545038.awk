# https://atcoder.jp/contests/abc145/submissions/8545038
function min(x,y){return x<y?x:y}
function max(x,y){return x>y?x:y}
function abs(x){return x<0?-x:x}
function pow(n,m){return m<0?1/pow(n,-m):m==0?1:(z=pow(n,int(m/2)))*z*((n-1)*(m%2)+1)}
function reverse(s){t="";for(i=length(s);i>0;)t=t substr(s,i--,1);return t}
NR>1{
    x[NR-1]=$1
    y[NR-1]=$2
}
END{
    n = NR - 1
    s = 0
    for (i = 1; i <= n; ++i) {
        for (j = 1; j < i; ++j) {
            s += sqrt(pow(x[i] - x[j], 2) + pow(y[i] - y[j], 2))
        }
    }
    printf("%.10f", s * 2/ n)
}
