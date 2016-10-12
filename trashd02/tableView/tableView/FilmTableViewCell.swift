//
//  FilmTableViewCell.swift
//  tableView
//
//  Created by Maxime BINET on 10/5/16.
//  Copyright © 2016 Maxime BINET. All rights reserved.
//

import UIKit

class FilmTableViewCell: UITableViewCell {

    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var film : (String, Int)? {
        didSet {
            if let f = film {
                yearLabel?.text = String(f.1)
                nameLabel?.text = f.0
            }
        }
    }

}
