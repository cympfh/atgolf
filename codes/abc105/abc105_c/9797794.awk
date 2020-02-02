# https://atcoder.jp/contests/abc105/submissions/9797794
{
    x = +$0;

    if (x == 0) {
        print 0
        exit
    }

    line = ""
    parity = 1;
    while (x != 0) {
        if (x % 2 == 0) {
            line = line "0"
        } else {
            line = line "1"
            if (parity) {
                x--;
            } else {
                x++;
            }
        }
        x = int(x / 2);
        parity = 1 - parity;
    }

    for (i = length(line); i > 0; --i) {
        printf "%c", substr(line, i, 1);
    }
    print ""
}
