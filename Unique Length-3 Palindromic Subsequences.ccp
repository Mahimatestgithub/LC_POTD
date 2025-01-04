#include <string>
#include <unordered_set>
#include <vector>
using namespace std;

class Solution {
public:
    int countPalindromicSubsequence(string s) {
        int first[26];
        int last[26];
        
        // Initialize arrays to -1
        fill(first, first + 26, -1);
        fill(last, last + 26, -1);
        
        // Record first and last occurrence of each character
        for (int i = 0; i < s.length(); i++) {
            int curr = s[i] - 'a';
            if (first[curr] == -1) {
                first[curr] = i;
            }
            last[curr] = i;
        }
        
        int ans = 0;
        
        // Check each character as the outermost character of a palindrome
        for (int i = 0; i < 26; i++) {
            if (first[i] == -1) continue; // Character does not exist
            
            unordered_set<char> uniqueChars;
            for (int middle = first[i] + 1; middle < last[i]; middle++) {
                uniqueChars.insert(s[middle]);
            }
            
            ans += uniqueChars.size();
        }
        
        return ans;
    }
};
