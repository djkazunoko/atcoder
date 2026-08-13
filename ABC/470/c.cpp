#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i = 0; i < (n); ++i)

int main() {
  int n, q;
  cin >> n >> q;

  vector<int> a(n);
  int ans = 0;
  set<int> is;
  auto add = [&](int i, int x) {
    ans ^= a[i];
    a[i] += x;
    ans ^= a[i];
  };

  rep(qi,q) {
    int type;
    cin >> type;
    if (type == 1) {
      int x;
      cin >> x;
      x--;
      add(x,1);
      is.insert(x);
    }
    if (type == 2) {
      set<int> nis;
      for (int i : is) {
        add(i,-1);
        if (a[i] > 0) nis.insert(i);
      }
      is = nis;
    }
    cout << ans << '\n';
  }
  return 0;
}
