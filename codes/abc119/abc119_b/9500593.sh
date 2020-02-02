# https://atcoder.jp/contests/abc119/submissions/9500593
awk '$2~/J/{s+=$1}
$2~/B/{s+=$1*380000}
END{print s}'
