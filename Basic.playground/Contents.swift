//: Playground - noun: a place where people can play

import UIKit

var str: String? = "dadong"
print(str!)
print("\(str!)")

var explictString:String! = str
print(explictString)

var assumedString:String! = "xiaodong....I hate you"
var str2 = assumedString
print(assumedString)

if let temp = str {
    print("str: \(temp) 是有值的")
}else{
    print("str 没有值")
}

let forcedString = str!
print(forcedString)


var implictString:String! = "implict unwrapping string"
print(implictString)
print("\(implictString)")

implictString = nil
print(implictString)


let a:String! = "aaaa"
let b:String = a
print(a)

var v:String! = nil
let y:String! = v
print(y)


let (x, w) = (1,3)
print(x, w)

let t = (1,5)
print(t.0, t.1)

var s = (name:"dadong", age:15)
print(s.name, s.age)

var dic = ["name":"xiaodong","age":"15"]
//print(dic["name"])
dic["name"] = "dasfhl"
print(dic["name"] ?? "nil")

if let value = dic["name"] {
    print(value)
}

let hello = "hello, " + "world"

var hehe:String?
print(hehe ?? "是个空值")
print(hehe != nil ? hehe! : "is a empty value")


for h in hello.characters {
    print(h)
    hehe?.append(h)
}

var hhh:String? = nil
hhh?.append("d")
print(hhh)

if hehe != nil && hehe!.isEmpty {
    print("hehe Is Empty")
}


var numberDouble = 3.14
var numberInt = 5
var result = Double(numberInt) + numberDouble
print(result)

var result2 = numberInt + Int(numberDouble)

var string = String(1)
print(string)

var word = "cafe"
print("the number of characters in \(word) is \(word.characters.count)") // 打印输出 "the number of characters in cafe is 4"
word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301
print("the number of characters in \(word) is \(word.characters.count)") // 打印输出 "the number of characters in café is 4"

var ww = " sd"
ww.startIndex
ww.endIndex

var www = ""
www.startIndex
www.endIndex
www.startIndex == www.endIndex

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]

greeting[greeting.index(greeting.startIndex, offsetBy: greeting.characters.count - 1)]

for index in greeting.characters.indices {
    print("\(greeting[index])", terminator: " " )
}
print("\n--------")

var welcome = "hello"
welcome.insert("5", at: welcome.endIndex)
welcome.insert(contentsOf: " dadong!".characters, at: welcome.endIndex)

welcome.remove(at: welcome.index(before: welcome.endIndex))
welcome

let range = welcome.index(welcome.endIndex, offsetBy: -8)..<welcome.endIndex
welcome.removeSubrange(range)
welcome


class Test{
    func haha(_ at:String, on:Int) -> Void {
        print(at, on)
    }
}

var tt = Test()

var arr = ["a", "b", "c", "d"]
arr[0] = "f"
arr

arr.remove(at: arr.count - 1)
arr

arr.removeAll()

if arr.isEmpty {
    print("arr is empty")
}


