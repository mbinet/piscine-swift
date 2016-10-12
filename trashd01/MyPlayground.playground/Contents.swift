//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playgroundadnasnd"

var fruits: [String] = [String]()
fruits.append("fraise")
fruits.append("banane")
fruits.append("pomme")

print(fruits.first)
print(fruits[2])

var personnes = [String : Int]()
personnes["Toto"] = 12
personnes["Martin"] = 64
print(personnes["Toto"])
print(personnes["j"])


// Optionnal

var optInt: Int? = 3
print(optInt)
print(optInt!)

var optString: String! = "foo"
print(optString)
print(optString!)

var ok: Int! = 2
print(ok)
var okok: Int = 3
print(3)


// Weak

var btn: UIButton? = UIButton()
CFGetRetainCount(btn)

//

var optInt2: Int? = 4
optInt = nil
if let number = optInt2 {
    print(number)
}

