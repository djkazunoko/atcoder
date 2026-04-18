#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i = 0; i < (n); ++i)
using ll = long long;

int main() {
  int n;
  cin >> n;
  vector<int> l(n);
  rep(i,n) cin >> l[i], l[i] <<= 1;

  int ans = 0;
  rep(s,1<<n) {
    int now = 0;
    ll x = 1;
    rep(i,n) {
      ll p = x;
      if (s>>i&1) x += l[i];
      else x -= l[i];
      if (p/abs(p)*x < 0) now++;
    }
    ans = max(ans, now);
  }
  cout << ans << endl;
  return 0;
}
