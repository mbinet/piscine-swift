//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playgroundadnasnd"

//Struct

struct PointStruct {
    var x: Double
    var y: Double
    
    mutating func makeOrigin() {
        x = 0
        y = 0
    }
}

//Class

class PointClass{
    var x: Double
    var y: Double
    
    init (x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    func makeOrigin() {
        x = 0
        y = 0
    }
    
    func toString() -> String {
        return "\(x) \(y)"
    }
}


//Extension


extension PointStruct {
    func toString() -> String {
        return "\(x) \(y)"
    }
}


//Class vs Struct

//var p1 = PointStruct(x: 21, y: 42)
var p1 = PointClass(x: 21, y: 42)
var p2 = p1
print(p1.toString())
print(p2.toString())
p1.x = 0
print(p1.toString())
print(p2.toString())


//heritage, override, overload

class Point: PointClass {
    override func toString() -> String {
        return "(x: \(x), y: \(y))"
    }
    
    func toString(char: Character) -> String {
        return "\(char)"
    }
}
