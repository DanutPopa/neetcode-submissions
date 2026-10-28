class ListNode {
    var val: String
    var prev: ListNode?
    var next: ListNode?
    
    init(_ val: String, _ prev: ListNode? = nil) {
        self.val = val
        self.prev = prev
    }
}


class BrowserHistory {
    
    var curr: ListNode

    init(_ homepage: String) {
        curr = ListNode(homepage)
    }
    
    func visit(_ url: String) {
        curr.next = ListNode(url, curr)
        curr = curr.next!
    }
    
    func back(_ steps: Int) -> String {
        var mutableSteps = steps
        while curr.prev != nil && mutableSteps > 0 {
            curr = curr.prev!
            mutableSteps -= 1
        }
        return curr.val
    }
    
    func forward(_ steps: Int) -> String {
        var mutableSteps = steps
        while curr.next != nil && mutableSteps > 0 {
            curr = curr.next!
            mutableSteps -= 1
        }
        return curr.val
    }
}

/**
 * Your BrowserHistory object will be instantiated and called as such:
 * let obj = BrowserHistory(homepage)
 * obj.visit(url)
 * let ret_2: String = obj.back(steps)
 * let ret_3: String = obj.forward(steps)
 */