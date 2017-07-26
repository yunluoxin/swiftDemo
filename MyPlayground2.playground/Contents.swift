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
var kindOfLargestNumber:String? = nil ;
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            kindOfLargestNumber = kind
        }
    }
}

print("largest number is \(largest), the kind is \(kindOfLargestNumber)")


var count = 3
while count < 100 {
    count = count * 2
}
count
print(count)

// repeat {} while ...
var m = 3
repeat {
    m = m * 2
}while m < 100
print(m)

// 不包含上界4
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

// 包含上界4
total = 0
for i in 0...4{
    total += i
}
print(total)



func greet(person:String, day: String) -> String {
    return "Hello \(person), today is \(day)"
}

let gr = greet(person: "dadong", day: "Monday")
print(gr)


func greet2(_ person:String, on day: String) -> String {
    return "Hello \(person), today is \(day)"
}

print(greet2("xiaodong", on: "Wedesday"))

func greet3(_ person:String , _ day: String) ->String {
    return "Hello \(person), today is \(day)"
}

print(greet3("haha", "Tuesday"))


func calculateStatistics(scores:[Int]) -> (min:Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        }else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [79,89,60,100])
// 可以通过xx.参数名获取，或者索引从0 开始分别获取到值
print(statistics.sum)
print(statistics.0)
print(statistics.min)


func sumOf(numbers:Int...)->Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sumOf(numbers: 1, 3,5)
sumOf()


func averageOf(numbers:Int...) -> Int {
    if numbers.count < 1 {
        return 0
    }
    var sum = 0
    for number in numbers {
        sum += number
    }
    var average = 0
    average = sum / numbers.count
    return average
}

print("Average is \(averageOf(numbers: 10,2,3))")
print("Average is \(averageOf())")


// 函数内嵌套函数
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
//    y = 100
    add()
    return y
}

var r = returnFifteen()
print(r)


// 返回函数
func makeIncremneter() -> ((Int) -> Int) {
    func addOne (number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncremneter()
increment(8)

// 把函数作为参数传递进去
func hasAnyMatches(list:[Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        print("当前是 \(item)")
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number:Int) -> Bool{
    if number < 10 {
        return true
    }
    return false
}

var ns = [20,39,0,8]
hasAnyMatches(list: ns, condition: lessThanTen)


//---------------------------

