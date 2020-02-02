# https://atcoder.jp/contests/abc001/submissions/9647014
{
    m = $1
    m /= 1000
    if (m < 0.1) {
        print "00"
    } else if (m <= 5) {
        ret = int(m * 10);
        if (ret < 10) print "0" ret
        else print ret
    } else if (m <= 30) {
        print m + 50
    } else if (m <= 70) {
        print int((m - 30) / 5) + 80
    } else {
        print 89
    }
}
