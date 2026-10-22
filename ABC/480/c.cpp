#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for (int i = 0; i < (n); ++i)

int main() {
  int n, k, t;
  cin >> n >> k >> t;
  vector<int> a(n);
  rep(i,n) cin >> a[i];
  sort(a.begin(), a.end());

  while (a.size() && a.back() > t) a.pop_back();
  a.push_back(t);
  n = a.size();

  int ans = 0;
  int r = 0;
  for (int x : a) {
    if (r < x) {
      ans += (x-r + k-1)/k;
    }
    r = x+k;
  }
  cout << ans << endl;
  return 0;
}
