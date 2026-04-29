#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i = 0; i < (n); ++i)

int main() {
  int n,m;
  cin >> n >> m;
  vector<vector<int>> to(n);
  rep(i,m) {
    int a,b;
    cin >> a >> b;
    a--; b--;
    to[a].push_back(b);
  }

  vector<bool> visited(n);
  queue<int> q;
  visited[0] = true; q.push(0);

  while (q.size()) {
    int v = q.front(); q.pop();
    for (int u : to[v]) {
      if (visited[u]) continue;
      visited[u] = true;
      q.push(u);
    }
  }

  int ans = 0;
  rep(i,n) if (visited[i]) ans++;
  cout << ans << endl;
  return 0;
}
