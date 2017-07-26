//: Playground - noun: a place where people can play

import UIKit

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    
}

let ace = Rank.Ace
let aceRawValue = ace.rawValue
print(ace.simpleDescription())

let ten = Rank.Ten
let temRawValue = ten.rawValue
print(ten.simpleDescription())

func compareRanks(rank1:Rank, rank2:Rank)->Rank{
    if rank1.rawValue > rank2.rawValue {
        return rank1
    }
    return rank2
}

let result = compareRanks(rank1: ace, rank2: ten)
print(result)


if let convertedRank = Rank(rawValue: 5) {
    print("会被执行")
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit : Int {
    // Clubs    梅花
    // Spades   黑桃
    // Diamonds 方块
    // Hearts   红心
    case Spades, Hearts, Diamonds, Clubs
    
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    
    // 不能写一个值，设置两个枚举的。 冒号后面必须有东西
    func color() -> String {
        switch self {
            case .Spades:
                return "black"
            case .Clubs:
                return "black"
//            case .Diamonds:
//                return "red"
//            case .Hearts:
//                return "red"
        default:
            return "red"
        }
    }
}

let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
print(heartsDescription)
print(hearts.color())


enum ServerResponse {
    case Result(String, String)
    case Failure(String)
}

let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Failure("Out of cheese.")

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Failure(message):
    print("Failure... \(message)")
}


struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
    func getAllCards() -> [Card] {
        var cards:[Card] = []
        for r in 1...Rank.King.rawValue {
            let rank = Rank(rawValue: r)
            for s in 1...4 {
                let suit = Suit(rawValue: s)
                if rank != nil && suit != nil {
                    let card =  Card(rank: rank!, suit: suit!)
                    cards.append(card)
                }
            }
        }
        return cards
    }
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDesc = threeOfSpades.simpleDescription()
print(threeOfSpadesDesc)

//print(threeOfSpades.getAllCards())


protocol ExampleProtocol {
    var simpleDescription: String {get}
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = " A simle class "
    var anotherProperty:Int = 9090
    func adjust() {
        simpleDescription += "now 100% adjusted"
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
print(a.anotherProperty)

struct SimpleStructure:ExampleProtocol {
    var simpleDescription: String = " A simple structure"
    mutating func adjust() {
        // 如果要改变结构体里的数据，必须标记为mutating
        simpleDescription += " (adjusted)."
        print("adjust method")
    }
    var anotherProperty:Int = 9098
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
print(b.anotherProperty)


//enum SimpleEnum: ExampleProtocol {
//    case SimpleDescription = "A simple enum"
//    case Complete = "a sdafa"
//    
//    func adjust() {
//        print(self)
//    }
//}

extension Int : ExampleProtocol {
    var simpleDescription: String {
        return "The number is \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
}

print(7.simpleDescription)

let protocolValue:ExampleProtocol = a
print(protocolValue.simpleDescription)


enum PrinterError : Error {
    case OutOfPaper
    case NoToner    // 没有碳粉
    case OnFire
}

let print_name = "Never Has Toner"

func send(job: Int, toPrinter printerName:String) throws -> String {
    if printerName == print_name {
        throw PrinterError.NoToner
    }
    return "job send"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: print_name)
    print(printerResponse)
}catch{
    print(error)
}

do {
    let printerResponse = try send(job: 9, toPrinter: print_name)
    print(printerResponse)
}catch PrinterError.OnFire {
    print(" on fire")
}catch let printerError as PrinterError {
    print("Printer error: \(printerError)")
}


// try加了问好之后，如果有错误抛出，可以置为nil
let printerSuccess = try? send(job: 1844, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1845, toPrinter: print_name)

if printerSuccess == "job send" {
    print("success")
}

var fridgeOpen = false
var fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    defer {
        fridgeOpen = false
    }
    fridgeOpen = true
    
    let result = fridgeContent.contains(food)
    return result
}

fridgeContains("banana")
print(fridgeOpen)


// 泛型

func repeatItem<Item>(repeating item:Item, numberOfItems: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfItems {
        result.append(item)
    }
    return result
}

repeatItem(repeating: "knock", numberOfItems: 4)

enum OptionalValue<Wrapped>{
    case None
    case Some(Wrapped)
}
var possibleInteger:OptionalValue<Int> = .None
possibleInteger = .Some(100)
print(possibleInteger)

func anyCommonElements<T:Sequence, U:Sequence>(_ lhs:T, _ rhs:U) -> Bool where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}

print(anyCommonElements([1,3,90], [3]))


// 不知道怎么返回一个序列
//func anyCommonElements<T:Sequence, U:Sequence, S:Sequence>(_ lhs:T, _ rhs:U) -> S where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element, S.Iterator.Element == T.Iterator.Element {
//    var s as [S]
//    for lhsItem in lhs {
//        for rhsItem in rhs {
//            if lhsItem == rhsItem {
//                s.append(lhsItem)
//            }
//        }
//    }
//    return s
//}
