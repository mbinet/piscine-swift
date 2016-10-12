//
//  ViewController.swift
//  tableView
//
//  Created by Maxime BINET on 10/5/16.
//  Copyright © 2016 Maxime BINET. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var tableView: UITableView!

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.films.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("filmCell") as! FilmTableViewCell
        cell.film = Data.films[indexPath.row]
        return cell
    }
    
}

