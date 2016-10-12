//
//  SecondViewController.swift
//  segue
//
//  Created by Maxime BINET on 10/5/16.
//  Copyright © 2016 Maxime BINET. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "backSegue" {
            if let vc = segue.destinationViewController as? ViewController {
                vc.title = "Back from 2nd View"
            }
        }
    }
    
    @IBAction func backButton(sender: UIButton) {
        performSegueWithIdentifier("backSegue", sender: "foo")
    }
    

}
