class MinStack {
    
    private var stack = [Int]()
    private var minVal = Int.max 
    
    init() {

    }
    
    func push(_ val: Int) {
        if stack.isEmpty {
            stack.append(0)
            minVal = val
        }
        else {
            stack.append(val - minVal)
            if val < minVal {
                minVal = val
            }
        }
    }
    
    func pop() {
        guard stack.isEmpty == false else { return }
        let pop = stack.removeLast()
        if pop < 0 {
            minVal -= pop
        }
    }
    
    func top() -> Int {
        guard let top = stack.last else { return 0 }
        return top > 0 ? top + minVal : minVal
    }
    
    func getMin() -> Int {
        return minVal
    }
}
