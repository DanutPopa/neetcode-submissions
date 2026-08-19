class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var count = 0
        var maxConsecutiveOnes = 0

        for num in nums {
            if num == 0 {
                count = 0
                continue
            }
            count += 1 
            if count > maxConsecutiveOnes {
                maxConsecutiveOnes = count
            }
        }
        return maxConsecutiveOnes
    }
}
