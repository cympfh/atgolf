# https://atcoder.jp/contests/abc019/submissions/9661746
{
    last = ""
    num = 0
    for (i = 1; i <= length($1); ++i) {
        c = substr($1, i, 1)
        if (last == c) {
            num++;
        } else {
            if (num > 0) {
                printf "%c%d", last, num
            }
            num = 1;
            last = c;
        }
    }
    if (num > 0) {
        printf "%c%d", last, num
    }
    printf "\n"
}
