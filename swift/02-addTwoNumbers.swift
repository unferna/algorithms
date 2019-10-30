import Foundation
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

extension ListNode {
    func insertAtStart(_ listNode: ListNode?) {
        
    }

    func printList() {
        var iter: ListNode? = self

        while iter != nil {
            if let value = iter?.val {
                print(value)
            }

            iter = iter?.next
        }
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1Handler: ListNode? = l1
        var l2Handler: ListNode? = l2
        
        while l1Handler != nil && l2Handler != nil {
            
            l1Handler = l1Handler?.next
            l2Handler = l2Handler?.next
        }

        return nil
    }
}

var list1 = ListNode(2)
var list1A = ListNode(4)
var list1B = ListNode(3)

list1.next = list1A
list1A.next = list1B

list1.printList()

var list2 = ListNode(5)
var list2A = ListNode(6)
var list2B = ListNode(4)

list2.next = list2A
list2A.next = list2B