class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var count = 0
        var maxConsecutiveOnes = 0

        for num in nums {
            count = num == 1 ? count + 1 : 0
            maxConsecutiveOnes = max(count, maxConsecutiveOnes)
        }
        return maxConsecutiveOnes
    }
}
