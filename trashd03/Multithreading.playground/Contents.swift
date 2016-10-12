//: Playground - noun: a place where people can play

import UIKit

let qos = QOS_CLASS_BACKGROUND

let queue = dispatch_get_global_queue(qos,0)

dispatch_async(queue) {
    print("this come from another thread")
    dispatch_async(dispatch_get_main_queue()) {
        
    }
}

print("this come from main thread")
