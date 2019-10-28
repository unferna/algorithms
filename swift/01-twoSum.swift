/**
 * Problem:
 * Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 * You may assume that each input would have exactly one solution, and you may not use the same element twice.
 *
 * Source: https://leetcode.com/problems/two-sum/
*/

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var currentIndex = 0
        var found = false
        var result: [Int] = []
        
        for (index, num1) in nums.enumerated() {
            for (secondIndex, num2) in nums.enumerated() where secondIndex > index {
                if index == secondIndex {
                    continue
                }
                
                if num1 + num2 == target {
                    found = true
                    result = [index, secondIndex]
                    break
                }
            }
            
            if found {
                break
            }
        }
        
        return result
    }
}

let numbers = [2, 4, 5, 7, 9]
let target = 11

let solution = Solution()
let indexes = solution.twoSum(numbers, 20)
let result = indexes.count == 2 ? "Indexes are: [indexes]" : "Target not found!"
print( result )