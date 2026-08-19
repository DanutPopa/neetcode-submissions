class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = Dictionary<Int, Int>()

        for (i, num) in nums.enumerated() {
            let complement = target - num
            if let index = dict[complement] {
                return [index, i]
            }
            dict[num] = i
        }

        return []
    }
}
