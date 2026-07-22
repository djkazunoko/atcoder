#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i = 0; i < (n); ++i)

int main() {
  int n,m;
  cin >> n >> m;
  vector<int> a(n), b(n-1);
  rep(i,n) cin >> a[i];
  rep(i,n-1) cin >> b[i];

  int ans = n;
  rep(s,2) {
    int now = 0;
    int x = s;
    rep(i,n) {
      if (a[i] != x) now++;
      if (i != n-1) x ^= b[i]; // x = (b[i]-x)%2
    }
    ans = min(ans,now);
  }
  cout << ans << endl;
  return 0;
}
