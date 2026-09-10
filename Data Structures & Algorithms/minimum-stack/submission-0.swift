class MinStack {
    
    var stack: [Int]
    
    init() {
        stack = []
    }
    
    func push(_ val: Int) {
        stack.append(val)
    }
    
    func pop() {
        stack.removeLast()
    }
    
    func top() -> Int {
        stack.last ?? 0
    }
    
    func getMin() -> Int {
        stack.min() ?? 0
    }
}
