class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var records: [Int] = []

        for operation in operations {
            if let record = Int(operation) {
                records.append(record)
            }
            else {
                switch operation {
                    case "+":
                    var sum = 0
                    for i in stride(from: records.count - 1, through: records.count - 2, by: -1) {
                        sum += records[i]
                    }
                    records.append(sum)
                    case "C":
                    records.removeLast()
                    case "D":
                    if let last = records.last {
                        records.append(last * 2)
                    }
                    default:
                    break
                }
            }
        }
        var total = 0
        for record in records {
            total += record
        }
        return total
    }
}
