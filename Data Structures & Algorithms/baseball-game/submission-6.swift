class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var records: [Int] = []
        var result = 0
        for operation in operations {
            if let record = Int(operation) {
                records.append(record)
                result += record
            }
            else {
                switch operation {
                    case "+":
                    let top = records.removeLast()
                    let newTop = top + records.last!
                    records.append(top)
                    records.append(newTop)
                    result += newTop
                    case "C":
                    result -= records.removeLast()
                    case "D":
                    if let last = records.last {
                        let doubleVal = last * 2
                        records.append(doubleVal)
                        result += doubleVal
                    }
                    default:
                    break
                }
            }
        }
        return result
    }
}
