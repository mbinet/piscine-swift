//
//  APIController.swift
//  Tweets
//
//  Created by Maxime BINET on 10/7/16.
//  Copyright © 2016 Maxime BINET. All rights reserved.
//

import Foundation

class APIController{
    weak var delegate : APITwitterDelegate?
    let token : String
    
    init(deleg: APITwitterDelegate, tok: String) {
        self.delegate = deleg
        self.token = tok
    }
    
    func req(search: String) {
        let url = NSURL(string: "https://api.twitter.com/1.1/search/tweets.json?q=" + search + "%20lang%3Afr&count=100")
        let request = NSMutableURLRequest(URL: url!)
        request.HTTPMethod = "GET"
        request.setValue("Bearer " + self.token, forHTTPHeaderField: "Authorization")
        request.setValue("application/x-www-form-urlencoded;charset=UTF-8", forHTTPHeaderField: "Content-Type")
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request) {
            (data, response, error) in
//            print(response)
            if let err = error {
                print(err)
            }
            else if let d = data {
                do {
                    if let dic : NSDictionary = try NSJSONSerialization.JSONObjectWithData(d, options: NSJSONReadingOptions.MutableContainers) as? NSDictionary {
//                        print(dic)
//                        print(dic["statuses"])
                        if let statuses = dic["statuses"] as? [[String: AnyObject]] {
                            for t in statuses {
                                if let n = t["user"]?["screen_name"] as? String {
                                    if let text = t["text"] as? String {
                                        print(n)
                                        let tweet = Tweet(n: n, t: text)
                                        self.delegate?.handleTweet(tweet)
                                    }
                                }
                            }
                        }
                    }
                }
                catch (let err) {
                    self.delegate?.handleError(err as NSError)
                }
            }
        }
        task.resume()
    }
}