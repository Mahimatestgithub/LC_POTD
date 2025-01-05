class Solution {
public:
    string shiftingLetters(string s, vector<vector<int>>& shifts) {
        string result = s; // Start with the original string
        
        for (const auto& shift : shifts) {
            int start = shift[0];
            int end = shift[1];
            int direction = shift[2];
            
            // Apply the shift to each character in the range
            for (int i = start; i <= end; i++) {
                char c = result[i];
                int dist = c - 'a';
                if (direction == 1) dist++; // Right shift
                else dist--; // Left shift
                dist = (dist + 26) % 26; // Handle wrap-around
                result[i] = 'a' + dist;
            }
        }
        
        return result;
    }
};
