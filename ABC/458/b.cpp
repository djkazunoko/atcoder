#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i = 0; i < (n); ++i)

const int di[] = {-1,0,1,0};
const int dj[] = {0,-1,0,1};

int main() {
  int h, w;
  cin >> h >> w;

  rep(i,h) {
    rep(j,w) {
      int cnt = 0;
      rep(v,4) {
        int ni = i+di[v], nj = j+dj[v];
        if (ni < 0 || nj < 0 || ni >= h || nj >= w) continue;
        cnt++;
      }
      cout << cnt << ' ';
    }
    cout << endl;
  }
  return 0;
}
