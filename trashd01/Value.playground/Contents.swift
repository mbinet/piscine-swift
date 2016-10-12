import UIKit

enum Value : Int {
    case Ace = 1
    case Two = 2
    case Three = 3
    case Four = 4
    case Five = 5
    case Six = 6
    case Seven = 7
    case Height = 8
    case Nine = 9
    case Ten = 10
    case Jack = 11
    case Queen = 12
    case King = 13

    static let allValues = [Ace, Two, Three, Four, Five, Six, Seven, Height, Nine, Ten, Jack, Queen, King]
}

enum Color : String {
    case Club = "Club"
    case Diamond = "Diamond"
    case Heart = "Heart"
    case Spade = "Spade"
    
    static let allColors = [Club, Diamond, Heart, Spade]
}

class Card: NSObject {
    var c: Color
    var v: Value
    
    init(c: Color, v: Value) {
        self.c = c
        self.v = v
    }
    
    override var description: String {
        return "(\(v.rawValue), \(c.rawValue))"
    }
}

let card1 = Card(c: Color.Spade, v: Value.Ace)
let card2 = Card(c: Color.Diamond, v: Value.Two)
print(card1)
print(card2)
print(card1.isEqual(card2))
print(card1 == card2)
