class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        var closeToOpen: [Character: Character] = [")": "(", "]": "[", "}": "{"]

        for c in s {
           if let open = closeToOpen[c] {
            if let top = stack.last, top == open {
                stack.popLast()
            }
            else {
                return false
            }
           }
           else {
                stack.append(c)
           }
        }
        return stack.isEmpty
    }
}
