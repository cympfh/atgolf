# https://atcoder.jp/contests/abc090/submissions/8665558
{
    h = $1
    w = $2
    if (h==1&&w==1){
        print 1
    } else if (h==1||w==1){
        system("ruby -e \"p "h"*"w"-2\"")
    } else {
        system("ruby -e \"p "h-2"*"w-2"\"")
    }
}
