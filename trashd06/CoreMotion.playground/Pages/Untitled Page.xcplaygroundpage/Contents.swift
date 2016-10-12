//: Playground - noun: a place where people can play

import UIKit
import CoreMotion

func accelerometerHandler(data: CMAccelerometerData?, error: NSError?) {
    print("accelerometerHandler called")
}

let motionManager = CMMotionManager()

if motionManager.accelerometerAvailable {
    motionManager.accelerometerUpdateInterval = 0.2
    let queue = NSOperationQueue.mainQueue()
    motionManager.startAccelerometerUpdatesToQueue(queue, withHandler: accelerometerHandler)
}
