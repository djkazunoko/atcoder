#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i = 0; i < (n); ++i)

const int di[] = {-1,0,1,0};
const int dj[] = {0,-1,0,1};

int main() {
  int h, w;
  cin >> h >> w;
  vector<string> s(h);
  rep(i,h) cin >> s[i];

  int ans = 0;
  vector visited(h, vector<bool>(w));
  rep(i,h)rep(j,w) if (s[i][j] == '.') {
    if (visited[i][j]) continue;

    auto f = [&](auto f, int i, int j) -> bool {
      bool ok = (0 < i && i < h-1 && 0 < j && j < w-1);
      visited[i][j] = true;
      rep(dir,4) {
        int ni = i+di[dir], nj = j+dj[dir];
        if (ni < 0 || nj < 0 || ni >= h || nj >= w) continue;
        if (s[ni][nj] == '#') continue;
        if (visited[ni][nj]) continue;
        ok &= f(f, ni, nj);
      }
      return ok;
    };
    if (f(f,i,j)) ans ++;
  }
  cout << ans << endl;
  return 0;
}
