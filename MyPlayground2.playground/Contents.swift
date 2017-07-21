//: Playground - noun: a place where people can play

import UIKit

var shoppingList = ["lemon","apple","dragon","banana"]
var tem = shoppingList[0]
shoppingList[1] = "nut"
print(tem)
print(shoppingList)

var tupple = [
    "name" : "dadong",
    "age" : "27",
    "birth" : "19910520",
]

tem = tupple["name"]!
print(tem)


let emptyArray = [String]()
let emptyDictionary = [String : Float]()

shoppingList = []
tupple = [:]

var emptyList = [String]()
emptyList.append("a")
emptyList.append("b")
emptyList = []
emptyList

tupple = [:]

print("分数例子")
let scores = [80,90,70,60]
var teamScore = 0
for score in scores {
    if score > 80 {
        teamScore += 3
    }else{
        teamScore += 1
    }
}

print(teamScore)

var optionalString:String? = "hello"
print(optionalString == nil)

var optionalName:String? = nil
var greeting = "Hello"

if let name = optionalName {
    greeting = "Hello, \(name)"
}else{
    greeting = "tmd"
}

if optionalName != nil {
    print("exist")
}else{
    print("not exist")
}

// 错误的！
//if optionalName {
//    print("hah")
//}

print(greeting)


let nickName:String? = nil
let fullName:String = "Dadong Zhang"
//let informalGreeting = "Hi \(nickName ?? fullName)"
let nilValue:String?
nilValue = "xiaodong Zhang"

var emptyString:String?
print(emptyString)


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
var kindOfLargestNumber:String? ;
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            kindOfLargestNumber = kind
        }
    }
}

print("largest number is \(largest), the kind is \(kindOfLargestNumber)")



