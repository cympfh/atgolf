# https://atcoder.jp/contests/abc085/submissions/9827233
{
    for(i=0;i<=$1;++i){
        for(j=0;j<=$1-i;++j){
            k=$1-i-j;
            if (10000*i+5000*j+1000*k==$2) {
                print i,j,k
                exit
            }
        }
    }
    print -1,-1,-1
}
