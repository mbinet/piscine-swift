//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

let CUSTOMER_KEY = "BT7PBpNIV5mtjFIli5oaZTyKh"
let CUSTOMER_SECRET = "fMek2hbddtKqgv0O66DXmRCEvua7blCyjIpL0VNsOox2R0cu8b"
let BEARER = ((CUSTOMER_KEY + ":" + CUSTOMER_SECRET).dataUsingEncoding(NSUTF8StringEncoding))!.base64EncodedStringWithOptions(NSDataBase64EncodingOptions(rawValue: 0))

let url = NSURL(string: "https://api.twitter.com/oauth2/token")
let request = NSMutableURLRequest(URL: url!)
request.HTTPMethod = "POST"
request.setValue("Basic " + BEARER, forHTTPHeaderField: "Authorization")
request.setValue("application/x-www-form-urlencoded;charset=UTF-8", forHTTPHeaderField: "Content-Type")
request.HTTPBody = "grant_type=client_credentials".dataUsingEncoding(NSUTF8StringEncoding)
let task = NSURLSession.sharedSession().dataTaskWithRequest(request) {
    (data, response, error) in
    print(response)
    if let err = error {
        print(error)
    }
    else if let d = data {
        do {
            if let dic : NSDictionary = try NSJSONSerialization.JSONObjectWithData(d, options: NSJSONReadingOptions.MutableContainers) as? NSDictionary {
                print(dic)
            }
        }
        catch (let err) {
            print(err)
        }
    }
}
task.resume()

XCPlaygroundPage.currentPage.needsIndefiniteExecution = true