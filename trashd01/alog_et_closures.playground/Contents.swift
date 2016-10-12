//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var operations : [String : (Int, Int) -> Int] = [:]

func add(n1: Int, n2: Int) -> Int {
    return n1 + n2
}

operations["+"] = add

operations["-"]?(2, 3)


//closures

operations["-"] =  {
    (n1: Int, n2: Int) -> Int in
    return n1 - n2
}

operations["*"] = {
    return $0 * $1
}

operations["/"] = {
    $0 / $1
}

operations["+"] = (+)