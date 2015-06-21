#include <cstdio>
#include <cstring>
#include <string>
#include <iostream>
#include <cstdlib>
#include <vector>
#include <algorithm>
#include <map>

using namespace std;

char s[20000];
map<string, int> m;

int main()
{
	freopen("source.txt", "r", stdin);
	freopen("output.txt", "w", stdout);

	int num = 32;

	gets(s);
	m.clear();

	for(int i = 1; i <= 999; i ++)
	{
		//gets(s);
		string ans = "(";
		for(int j = 1; j <= num; j ++)
		{
			while (1)
			{
				char str[100];
				//sscanf(s, "%s", str);
				scanf("%s", str);
				if (j != 4 && j != 5 && j != 6 && j != 7 && j != 9 && j != 16 && j != 17 && j != 18)
				{
					ans += str;
					if (j != num) ans += ", ";
					else ans += "),";
				}
				int len = strlen(str);
				if (str[len - 1] == '\'') break;
			}
		}
		//if (m[ans] == 1) continue;
		//m[ans] = 1;
		cout << ans << endl;

	}

	return 0;
}