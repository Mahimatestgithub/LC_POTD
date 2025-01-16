class Solution {
public:
    int xorAllNums(vector<int>& nums1, vector<int>& nums2) {
        int xorNums1 = 0, xorNums2 = 0;

        // XOR all elements of nums1
        for (int num : nums1) {
            xorNums1 ^= num;
        }

        // XOR all elements of nums2
        for (int num : nums2) {
            xorNums2 ^= num;
        }

        // Calculate the result
        int result = 0;
        
        // If nums2.size() is odd, all elements of nums1 contribute to the result
        if (nums2.size() % 2 == 1) {
            result ^= xorNums1;
        }

        // If nums1.size() is odd, all elements of nums2 contribute to the result
        if (nums1.size() % 2 == 1) {
            result ^= xorNums2;
        }

        return result;
    }
};
