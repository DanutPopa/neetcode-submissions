class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()

        for c in s {
            if c == "(" || c == "[" || c == "{" {
                stack.append(c)
            }
            else {
                guard let top = stack.last else { return false }

                switch c {
                    case ")":
                    if top != "(" {
                        return false
                    }
                    case "]":
                    if top != "[" {
                        return false
                    }
                    case "}":
                    if top != "{" {
                        return false
                    }
                    default:
                        continue
                }

                stack.popLast()
            }
        }
        return stack.isEmpty
    }
}
