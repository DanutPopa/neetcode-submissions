class ListNode {
    var val: Int
    var prev: ListNode?
    var next: ListNode?
    
    init(_ val: Int = 0) {
        self.val = val
    }
}

class MyLinkedList {
    
    private var head: ListNode?
    private var tail: ListNode?
    
    init() {
        head = ListNode()
        tail = ListNode()
        head?.next = tail
        tail?.prev = head
    }
    
    func get(_ index: Int) -> Int {
        var idx = index
        var curr = head?.next
        while curr != nil && idx > 0 {
            curr = curr?.next
            idx -= 1
        }
        if curr != nil && curr !== tail && idx == 0 {
            return curr!.val
        }
        
        return -1
    }
    
    func addAtHead(_ val: Int) {
        let newNode = ListNode(val)
        var next = head?.next
        var prev = head
        newNode.next = next
        newNode.prev = prev
        prev?.next = newNode
        next?.prev = newNode
    }
    
    func addAtTail(_ val: Int) {
        let newNode = ListNode(val)
        let prev = tail?.prev
        let next = tail
        prev?.next = newNode
        next?.prev = newNode
        newNode.next = next
        newNode.prev = prev
    }
    
    func addAtIndex(_ index: Int, _ val: Int) {
        // Traverse to the node currently at that index
        var idx = index
        var curr = head?.next
        while curr != nil && idx > 0 {
            curr = curr?.next
            idx -= 1
        }
        if curr != nil && idx == 0 {
            let newNode = ListNode(val)
            var prev = curr?.prev
            var next = curr
            prev?.next = newNode
            next?.prev = newNode
            newNode.next = next
            newNode.prev = prev
        }
    }
    
    func deleteAtIndex(_ index: Int) {
        // Traverse to the target node
        var idx = index
        var curr = head?.next
        while curr != nil && idx > 0 {
            curr = curr?.next
            idx -= 1
        }
        if curr != nil && curr !== tail && idx == 0 {
            var prev = curr?.prev
            var next = curr?.next
            next?.prev = prev
            prev?.next = next
        }
    }
}

/**
 * Your MyLinkedList object will be instantiated and called as such:
 * let obj = MyLinkedList()
 * let ret_1: Int = obj.get(index)
 * obj.addAtHead(val)
 * obj.addAtTail(val)
 * obj.addAtIndex(index, val)
 * obj.deleteAtIndex(index)
 */