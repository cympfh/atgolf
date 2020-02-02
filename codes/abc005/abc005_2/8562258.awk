# https://atcoder.jp/contests/abc005/submissions/8562258
BEGIN{m=200}
NR>1{m=m<$1?m:$1}
END{print m}
