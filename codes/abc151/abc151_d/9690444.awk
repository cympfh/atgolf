# https://atcoder.jp/contests/abc151/submissions/9690444
function min(x,y){return x<y?x:y}
function max(x,y){return x>y?x:y}
NR == 1 {
    h = $1
    w = $2
}

function node_index(i, j) {
    return (i - 1) * w + j
}

NR > 1 {
    i = NR - 1;
    for (j = 1; j <= w; ++j) {
        f[node_index(i, j)] = (substr($0, j, 1) == ".");
    }
}

function queue_new(q) {
    q[0] = 0;  # length
    q[1] = 3;  # head
    q[2] = 2;  # tail
}
function queue_length(q) { return q[0] }
function queue_top(q) { return q[q[1]] }
function queue_pop(q) {
    if (q[0] == 0) return;
    q[0]--;
    return q[q[1]++];
}
function queue_push(q, x) {
    q[0]++;
    q[2]++;
    q[q[2]] = x;
}

function bfs(u) {
    queue_new(q);
    queue_push(q, u);
    while (queue_length(q) > 0) {
        u = queue_pop(q);
        for (k = 1; k <= 4; ++k) {
            v = u + dx[k];
            if (u % w == 1 && k == 1) continue;
            if (u % w == 0 && k == 2) continue;
            if (u == v) continue;
            if (f[v] == 0) continue;
            if (memo[v] <= memo[u] + 1) continue;
            memo[v] = memo[u] + 1;
            queue_push(q, v);
        }
    }
}

END {
    dx[1] = -1
    dx[2] = 1
    dx[3] = -w
    dx[4] = w
    inf = 90000;

    ans = 0;
    for (i=1; i <= h; ++i) {
        for (j=1; j <= w; ++j) {
            u = node_index(i, j);
            if (f[u] == 0) continue;
            for (k=1;k<=400;++k) memo[k] = inf;
            memo[node_index(i, j)] = 0;
            bfs(u);
            for (k=1;k<=400;++k) if (memo[k] < inf) ans = max(ans, memo[k]);
        }
    }
    print ans;
}
