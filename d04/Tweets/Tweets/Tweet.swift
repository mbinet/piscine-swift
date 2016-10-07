//
//  Tweet.swift
//  Tweets
//
//  Created by Maxime BINET on 10/7/16.
//  Copyright © 2016 Maxime BINET. All rights reserved.
//

import Foundation

struct Tweet: CustomStringConvertible {
    let name : String
    let text : String
    
    init(n: String, t: String) {
        self.name = n
        self.text = t
    }
    
    var description: String {
        return "(\(name), \(text))"
    }
}
