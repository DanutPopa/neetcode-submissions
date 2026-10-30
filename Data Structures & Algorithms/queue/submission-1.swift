class Node {
    var value: Int
    var prev: Node?
    var next: Node?
    
    init(_ value: Int) {
        self.value = value
    }
}

class Deque {
    
    var dummyHead = Node(0)
    var dummyTail = Node(0)
    
    init() {
        // Connect dummy head and tail
        dummyHead.next = dummyTail
        dummyTail.prev = dummyHead
    }
    
    func isEmpty() -> Bool {
        dummyHead.next === dummyTail
    }
    
    func append(_ value: Int) {
        let newNode = Node(value)
        let lastNode = dummyTail.prev
        lastNode?.next = newNode
        newNode.prev = lastNode
        newNode.next = dummyTail
        dummyTail.prev = newNode
    }
    
    func appendleft(_ value: Int) {
        let newNode = Node(value)
        let firstNode = dummyHead.next
        dummyHead.next = newNode
        newNode.prev = dummyHead
        newNode.next = firstNode
        firstNode?.prev = newNode
    }
    
    func pop() -> Int {
        if isEmpty() {
            return -1
        }
        let targetNode = dummyTail.prev
        let prevNode = targetNode?.prev
        prevNode?.next = dummyTail
        dummyTail.prev = prevNode
        let value = targetNode!.value
        
        return value
    }
    
    func popleft() -> Int {
        if isEmpty() {
            return -1
        }
        
        let targetNode = dummyHead.next
        let value = targetNode!.value
        let nextNode = targetNode?.next
        dummyHead.next = nextNode
        nextNode?.prev = dummyHead
        
        return value
    }
}
