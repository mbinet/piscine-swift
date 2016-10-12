//: Playground - noun: a place where people can play

import UIKit

let dynamicAnimator = UIDynamicAnimator()

let gravityBahvior = UIGravityBehavior()

let myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))

gravityBahvior.magnitude = 100

dynamicAnimator.addBehavior(gravityBahvior)

gravityBahvior.addItem(myView)

gravityBahvior.removeItem(myView)
