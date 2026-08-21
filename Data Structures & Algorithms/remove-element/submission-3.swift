class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var n = nums.count
        var i = 0

        while i < n {
            if nums[i] == val {
                n -= 1
                nums[i] = nums[n]
            }
            else {
                i += 1
            }
        }
        return n
    }
}
