class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        let n = nums.count

        var ans = Array(repeating: 0, count: 2 * n)

        for i in 0..<n {
            ans[i] = nums[i]
            ans[i + n] = nums[i]
        }

        return ans
    }
}
