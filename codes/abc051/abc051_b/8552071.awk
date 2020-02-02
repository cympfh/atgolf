# https://atcoder.jp/contests/abc051/submissions/8552071
{
    k=$1
    a=0
    for(x=0;x<=k;++x){
        for(y=0;y<=k;++y){
            z=$2-x-y
            if(z>=0&&z<=k)++a
        }
    }
    print a
}
