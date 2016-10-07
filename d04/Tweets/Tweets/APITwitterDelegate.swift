//
//  APITwitterDelegate.swift
//  Tweets
//
//  Created by Maxime BINET on 10/7/16.
//  Copyright © 2016 Maxime BINET. All rights reserved.
//

import Foundation

protocol APITwitterDelegate: class{
    func handleTweet(tweet: Tweet)
    func handleError(err: NSError)
}