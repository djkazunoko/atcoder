#include <iostream>
#include <vector>
#include <string>
#include <set>
#include <tuple>
using namespace std;
#define rep(i,n) for (int i = 0; i < (n); ++i)

int main() {
  int n;
  cin >> n;
  vector<int> a(n), b(n);
  rep(i,n) {
    cin >> a[i] >> b[i];
    b[i]--;
  }
  int m;
  cin >> m;
  vector<string> s(m);
  rep(i,m) cin >> s[i];

  set<tuple<int,int,char>> st;
  rep(i,m) {
    int len = s[i].size();
    rep(j,len) {
      st.emplace(len,j,s[i][j]);
    }
  }

  rep(j,m) {
    bool ok = true;
    if (s[j].size() != n) ok = false;
    if (ok) {
      rep(i,n) {
        if (!st.count(tie(a[i],b[i],s[j][i]))) ok = false;
      }
    }
    if (ok) cout << "Yes\n";
    else cout << "No\n";
  }
  return 0;
}
