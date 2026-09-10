class MinStack {
    
    private var stack: [Int]
    private var minStack: [Int]
    
    init() {
        stack = []
        minStack = []
    }
    
    func push(_ val: Int) {
        stack.append(val)
        let minVal = min(val, minStack.last ?? val)
        minStack.append(minVal)
    }
    
    func pop() {
        stack.removeLast()
        minStack.popLast()
    }
    
    func top() -> Int {
        stack.last ?? 0
    }
    
    func getMin() -> Int {
        minStack.last ?? 0
    }
}
