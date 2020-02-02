# https://atcoder.jp/contests/abc047/submissions/8561215
NR == 1 {
    left = 0
    right = $1
    top = 0
    bottom = $2
}
NR > 1 {
    x = $1
    y = $2
    a = $3
    if (a == 1) {
        left = left < x ? x : left
    }
    else if (a == 2) {
        right = right < x ? right : x
    }
    else if (a == 3) {
        top = top < y ? y : top
    }
    else {
        bottom = bottom < y ? bottom : y
    }
}
END {
    height = bottom > top ? bottom - top : 0
    width = right > left ? right - left : 0
    print(height * width)
}
