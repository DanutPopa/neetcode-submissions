class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var result = Array(repeating: -1, count: arr.count)
        var currentMax = -1

        for i in stride(from: arr.count - 1, through: 0, by: -1) {
            result[i] = currentMax
            currentMax = max(currentMax, arr[i])
        }

        return result
    }
}
