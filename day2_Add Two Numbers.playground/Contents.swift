//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
//
//You may assume the two numbers do not contain any leading zero, except the number 0 itself.

//Example
//
//Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
//Output: 7 -> 0 -> 8
//Explanation: 342 + 465 = 807.


         // Definition for singly-linked list.
          public class ListNode {
              public var val: Int
              public var next: ListNode?
              public init(_ val: Int) {
                  self.val = val
                  self.next = nil
              }
          }
        class Solution {
            func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
               var carry = 0
                var sum = 0
                let head = ListNode(0)
                var temp = head
                var l1 = l1
                var l2 = l2
                
                while (l1 != nil)||(l2 != nil)||(carry != 0) {
                    
                    if l1 != nil{
                        sum += l1!.val
                        l1 = l1?.next
                    }
                    if l2 != nil{
                        sum += l2!.val
                        l2 = l2?.next
                    }
                    carry = sum / 10
                    sum = sum%10
                    
                    let newNode = ListNode(sum)
                    temp.next = newNode
                    temp = temp.next!
                    sum = carry
                    
                }
                return head.next
            }
        }





//var l1 = l1
//var l2 = l2
//var sum = 0
//let result = ListNode(0)
//var temp = result
//var remain = 0
//
//while l1 != nil || l2 != nil || remain != 0 {
//    sum = remain
//    if l1 != nil {
//        sum += l1!.val
//        l1 = l1?.next
//    }
//    if l2 != nil {
//        sum += l2!.val
//        l2 = l2?.next
//    }
//    remain = sum / 10
//    sum = sum % 10
//    let node = ListNode(sum)
//    temp.next = node
//    temp = temp.next!
//}
//return result.next


//var tempNode:ListNode? = ListNode(0)
//let head = tempNode
//var carry = 0
//var templ1:ListNode? = l1
//var templ2:ListNode? = l2
//var tempSum: Int = 0
//var t1:Int
//var t2:Int
//while (templ1 != nil) || (templ2 != nil ) || (carry != 0) {
//      t1=0
//      t2=0
//if templ1 != nil { t1=temp1.val} else {t1=0}
//if templ2 != nil { t2=temp2.val} else {t2=0}
//    tempSum = t1 + t2 + carry
//    carry = tempSum / 10
//
//
//    tempNode!.next = ListNode(tempSum%10)
//    tempNode = tempNode?.next
//
//    if  templ1?.next != nil {templ1 = templ1.next }
//    if  templ2?.next != nil {templ1 = templ2.next }
//}
//return head?.next





        var l1 = ListNode(2)
        l1.next  = ListNode(4)
        l1.next?.next = ListNode(3)
        l1.next?.next?.next = ListNode(9)

        var l2 = ListNode(5)
        l2.next  = ListNode(6)
        l2.next?.next = ListNode(4)


var a = Solution()
var l3 = a.addTwoNumbers(l1, l2)
while l3 != nil {
    print(l3!.val) // or print(l3!.val) because we sure it is not nil.
    l3 = l3?.next
}

//        var a = Solution()
//        while( a.addTwoNumbers(l1, l2)?.next != nil){
//            print(l1.val)
//            //optional value error with a question mark.
//            l1 = l1.next!
    
//        }
//        print (l1.val)








