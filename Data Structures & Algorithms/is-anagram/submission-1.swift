class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {

        if s.count != t.count {
            return false
        }

        var freqS = Dictionary<Character, Int>()

        for char in s {
            freqS[char, default: 0] += 1
        }

        var freqT = Dictionary<Character, Int>()
        for char in t {
            freqT[char, default: 0] += 1
        }

        if freqS == freqT {
            return true
        }

        return false
    }
}
