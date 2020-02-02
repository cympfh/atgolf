# https://atcoder.jp/contests/abc145/submissions/8504731
NR==1{n=$1}
NR==2{
    if(substr($1, 1, n/2) == substr($1, n/2+1)) {
        print("Yes")
    } else {
        print("No")
    }
}
