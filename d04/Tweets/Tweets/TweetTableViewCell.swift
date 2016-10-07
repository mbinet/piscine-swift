//
//  TweetTableViewCell.swift
//  Tweets
//
//  Created by Maxime BINET on 10/7/16.
//  Copyright © 2016 Maxime BINET. All rights reserved.
//

import UIKit

class TweetTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    var tweet : (Tweet)? {
        didSet {
            if let t = tweet {
                nameLabel?.text = t.name
                textView?.text = t.text
            }
        }
    }
}
