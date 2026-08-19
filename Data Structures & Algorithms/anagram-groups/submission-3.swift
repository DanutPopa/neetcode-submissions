class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {

        if strs.isEmpty {
            return []
        }

        var dict: [[Int]: [String]] = [:]

        for str in strs {
            var count = Array(repeating: 0, count: 26)
            for char in str {
                count[Int(char.asciiValue! - Character("a").asciiValue!)] += 1
            }
            dict[count, default: []].append(str)
        }

        return Array(dict.values)
    }
}
