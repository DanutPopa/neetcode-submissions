class ListNode {
    var val: String
    var next: ListNode?
    var prev: ListNode?
    
    init(_ val: String) {
        self.val = val
    }
}


class BrowserHistory {
    
    var curr: ListNode

    init(_ homepage: String) {
        curr = ListNode(homepage)
    }
    
    func visit(_ url: String) {
        let newNode = ListNode(url)
        newNode.prev = curr
        curr.next = newNode
        curr = curr.next!
    }
    
    func back(_ steps: Int) -> String {
        var maxSteps = 0
        var temp = curr
        while temp.prev != nil {
            temp = temp.prev!
            maxSteps += 1
        }
        if steps > maxSteps {
            curr = temp
        }
        else {
            for i in 1...steps {
                curr = curr.prev!
            }
        }
        return curr.val
    }
    
    func forward(_ steps: Int) -> String {
        var maximumSteps = 0
        var temp = curr
        while temp.next != nil {
            temp = temp.next!
            maximumSteps += 1
        }
        if steps > maximumSteps {
            curr = temp
        }
        else {
            for i in 1...steps {
                curr = curr.next!
            }
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