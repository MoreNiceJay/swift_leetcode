//: Playground - noun: a place where people can play

import UIKit

var nums = [2, 7, 11, 15]
var str = "Hello, playground"


class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int:Int]()
        
        for (i,num) in nums.enumerated(){
            
            if let complement = dict[target - num]{
                return [complement, i]
            }
               
            dict[num] = i
        
        }
        fatalError("No valid outputs")
    }
}
var a = TwoSum()
print(a.twoSum(nums, 22))


let names: Set = ["Sofia", "Camilla", "Martina", "Mateo", "Nicolás"]
var shorterIndices: [SetIndex<String>] = []
for (i, name) in zip(names.indices, names) {
    if name.count <= 5 {
        shorterIndices.append(i)
    }
}


for i in shorterIndices {
    print(names[i])
}
// Prints "Sofia"
// Prints "Mateo"


//var dict = [Int: Int]()
//
//for (i, num) in nums.enumerated() {
//    if let lastIndex = dict[target - num] {
//        return [lastIndex, i]
//    }
//
//    dict[num] = i

