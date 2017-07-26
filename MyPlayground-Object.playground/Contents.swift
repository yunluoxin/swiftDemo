//: Playground - noun: a place where people can play

import UIKit

class Shape {
    var numberOfSides = 0
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    let numberOfCorners = 0
    
    func countOfShape(shape:Shape) -> Int {
        return shape.numberOfSides
    }
}

var shape = Shape()
shape.numberOfSides = 4
print(shape.simpleDescription())
print(shape.countOfShape(shape: shape))



class NamedShapes {
    var numberOfSides:Int = 0
    var name:String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "\(name) shape with \(numberOfSides) sides"
    }
}

var namedShape = NamedShapes(name: "dadong")
namedShape.numberOfSides = 4
print(namedShape.simpleDescription())


class Square: NamedShapes {
    var sideLength: Double
    
    init(sideLength:Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

let square = Square(sideLength: 16.875, name: "四边形")
print(square.simpleDescription())
print(square.area())


class EquilateralTriangle:NamedShapes {
    var sideLength:Double = 0.0
    
    init(sideLength:Double, name:String) {
        super.init(name: name)
        self.sideLength = sideLength
        numberOfSides = 3
    }
    
    var perimeter:Double {
        get {
            return 3 * sideLength
        }
        
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An Equilateral triangle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 8, name: "三角形")
triangle.perimeter = 30
print(triangle.simpleDescription())


class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet{
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size:Double, name:String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 44, name: "another shape")
print(triangleAndSquare.square.sideLength)
print((triangleAndSquare.triangle.sideLength))
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle .sideLength)


let optionalSquare:Square? = Square(sideLength: 2.5, name: "option Square")
print(optionalSquare)
let sideLength = optionalSquare?.sideLength
print(sideLength)
if sideLength != nil {
    print("what the fuck swift")
}
