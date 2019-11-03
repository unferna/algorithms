/**
 * You are given two non-empty linked lists representing two non-negative integers. 
 * The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
 * You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 *
 * Source: https://leetcode.com/problems/add-two-numbers/
*/

import Foundation

class Node {
    var value: Int!
    var next: Node?

    init(_ value: Int) {
        self.value = value
        self.next = nil
    }

    func insertAt(start value: Int) {
        var newValue = Node(value)
        let aux = Node(self.value)
        aux.next = self.next

        newValue.next = aux
        self.value = newValue.value
        self.next = newValue.next
    }
    
    func insertAt(end value: Int) {
        let newValue = Node(value)
        var lastItem: Node? = self.next

        while lastItem?.next != nil {
            lastItem = lastItem?.next
        }

        if lastItem == nil {
            self.next = newValue
        
        } else {
            lastItem?.next = newValue
        }
    }

    func printMe() {
        var iter: Node? = self

        while iter != nil {
            print(iter?.value)
            iter = iter?.next
        }
    }
}

class Solution {
    func addTwoNumbers(_ l1: Node?, _ l2: Node?) -> Node? {
        var l1Handler: Node? = l1
        var l2Handler: Node? = l2
        var result: Node? = nil
        var surplus = 0
        
        while l1Handler != nil && l2Handler != nil {
            var number1: Int! = l1Handler!.value
            var number2: Int! = l2Handler!.value
            
            let sum = number1 + number2 + surplus
            var numToAdd = sum

            if sum > 9 {
                numToAdd = numToAdd % 10
                surplus = Int(sum / 10)
            
            } else {
                surplus = 0
            }

            if result == nil {
                result = Node(numToAdd)
            
            } else {
                result?.insertAt(start: numToAdd)
            }

            l1Handler = l1Handler?.next
            l2Handler = l2Handler?.next
        }  

        while surplus > 0 {
            var numToAdd = surplus % 10
            surplus = Int(surplus / 10)

            surplus -= numToAdd

            result?.insertAt(start: numToAdd)
        }

        return result
    }
}

let list = Node(2)
list.insertAt(end: 4)
list.insertAt(end: 3)

let list2 = Node(5)
list2.insertAt(end: 6)
list2.insertAt(end: 4)

let solution = Solution()
let result = solution.addTwoNumbers(list, list2)

result?.printMe()