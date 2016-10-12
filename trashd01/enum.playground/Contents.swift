//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//Enum

enum TrafficLight {
    case Green
    case Red
    case Orange
}

let light = TrafficLight.Orange
light.hashValue


//Nested Types

enum DoorState : String {
    case Open = "The door is open"
    case Closed = "The door is closed"
}

let door = DoorState.Open
door.rawValue
door.hashValue


//Generics

enum Option<T> {
    case Nil
    case Value(T)
}

var intOpt = Option.Value(42)

switch intOpt {
case .Nil:
    print("Number is nil")
case .Value (let n):
    print("Number is equal to \(n)")
}