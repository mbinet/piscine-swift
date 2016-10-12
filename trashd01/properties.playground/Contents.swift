//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


struct Person {
    
    
//    stored propertie
    var name: String
    
    
//    observers
    
    var age: Int {
        willSet {
            print("\(name) will change his age from \(age) to \(newValue)")
        }
        didSet {
            print("\(name) did change his age from \(oldValue) to \(age)")
        }
    }
    
    
//    computed properties
    
    var description: String {
        return "name: \(name), age: \(age)"
    }
    
    var isMinor: Bool {
        get {
            return age < 18
        }
        set {
            if newValue {
                age = 17
            }
            else {
                age = 18
            }
        }
    }
}

var joe = Person(name: "Joe", age: 12)
joe.description
joe.isMinor
joe.age = 12
joe.isMinor = true