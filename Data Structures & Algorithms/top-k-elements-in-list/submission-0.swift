class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var count: [Int: Int] = [:]
        var freq: [[Int]] = Array(repeating: [], count: nums.count + 1)

        for num in nums {
            count[num, default: 0] += 1
        }

        for (num, count) in count {
            freq[count].append(num)
        }

        var result: [Int] = []

        for i in stride(from: freq.count - 1, through: 0, by: -1) {
            for num in freq[i] {
                result.append(num)
                if result.count == k {
                    return result
                }
            }
        }

        return []
    }
}
