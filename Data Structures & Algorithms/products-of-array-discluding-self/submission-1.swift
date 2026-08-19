class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var results = Array(repeating: 1, count: nums.count)

        var prefix = 1
        for i in 0..<nums.count {
            results[i] = prefix
            prefix *= nums[i]
        }

        var post = 1
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            results[i] *= post
            post *= nums[i]
        }

        return results
    }
}
