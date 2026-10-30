class Node {
    var value: Int
    var prev: Node?
    var next: Node?
    
    init(_ value: Int) {
        self.value = value
    }
}

class Deque {
    private let dummyHead = Node(0)
    private let dummyTail = Node(0)
    
    init() {
        dummyHead.next = dummyTail
        dummyTail.prev = dummyHead
    }
    
    func isEmpty() -> Bool {
        dummyHead.next === dummyTail
    }
    
    func append(_ value: Int) {
        let newNode = Node(value)
        let lastNode = dummyTail.prev!
        newNode.prev = lastNode
        newNode.next = dummyTail
        lastNode.next = newNode
        dummyTail.prev = newNode
    }
    
    func appendleft(_ value: Int) {
        let newNode = Node(value)
        let firstNode = dummyHead.next!
        newNode.next = firstNode
        newNode.prev = dummyHead
        firstNode.prev = newNode
        dummyHead.next = newNode
    }
    
    func pop() -> Int {
        if isEmpty() {
            return -1
        }
        let targetNode = dummyTail.prev!
        let prevNode = targetNode.prev!
        let value = targetNode.value

        dummyTail.prev = prevNode
        prevNode.next = dummyTail
        
        return value
    }
    
    func popleft() -> Int {
        if isEmpty() {
            return -1
        }
        
        let targetNode = dummyHead.next!
        let nextNode = targetNode.next!
        let value = targetNode.value

        dummyHead.next = nextNode
        nextNode.prev = dummyHead
        
        return value
    }
}
