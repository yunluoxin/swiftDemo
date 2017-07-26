//: Playground - noun: a place where people can play

import UIKit

// 匿名闭包函数
var numbers = [20,19,17,2]
var results = numbers.map { (number: Int) -> Int in
    let result = number * 3
    return result
}
print(results)

var names = ["XiaoDong","Dadong"]
var lowerNames = names.map { (_ name:String) -> String in
    return name.lowercased()
}
print(lowerNames)

var upperNames = names.map { (name:String) -> String in
    return name.uppercased()
}
print(upperNames)

var namesCount = names.map { (name:String) -> Int in
    return name.characters.count
}
print(namesCount)

var newNames = names.map({
    name in "name: \(name)"
})

print(newNames)

var odds = numbers.map { (number: Int) -> Bool in
    if number % 2 == 0 {
        return false
    }
    return true
}

print(odds)

let sortedNumbers = numbers.sorted(by:{ $0 > $1})
print(sortedNumbers)