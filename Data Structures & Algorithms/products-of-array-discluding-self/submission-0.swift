class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var results = Array(repeating: 1, count: nums.count)

        var prefix = 1
        for i in 1..<nums.count {
            results[i] = nums[i - 1] * prefix
            prefix = results[i]
        }

        var post = 1
        for i in stride(from: nums.count - 2, through: 0, by: -1) {
            post *= nums[i + 1]
            results[i] *= post
        }

        return results
    }
}
