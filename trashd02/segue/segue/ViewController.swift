//
//  ViewController.swift
//  segue
//
//  Created by Maxime BINET on 10/5/16.
//  Copyright © 2016 Maxime BINET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func unWindSegue(segue: UIStoryboardSegue) {
        print(segue.identifier)
    }

}

