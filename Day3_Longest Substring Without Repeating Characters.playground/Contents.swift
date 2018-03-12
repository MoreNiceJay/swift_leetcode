//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var s = "pwwkew"
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var max_len = 0
        var start = 0
        var dict = [Character:Int]()
        for (i,c) in s.enumerated(){
            if let inTheDict = dict[c]{
                if start <= inTheDict{
                    start = inTheDict + 1
                }
            }
            else
            {
                max_len = max(max_len, i - start + 1)
            }
        dict[c] = i
        }
        
        
        return max_len
    }
}

var a = Solution()
print(a.lengthOfLongestSubstring(s))
