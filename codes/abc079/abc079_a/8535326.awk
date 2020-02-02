# https://atcoder.jp/contests/abc079/submissions/8535326
function good(x){return substr(x,1,1)==substr(x,2,1)&&substr(x,2,1)==substr(x,3,1)}
$0=good(substr($1,1,3))||good(substr($1,2,3)) ? "Yes" : "No"
