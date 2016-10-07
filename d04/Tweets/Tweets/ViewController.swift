//
//  ViewController.swift
//  Tweets
//
//  Created by Maxime BINET on 10/7/16.
//  Copyright © 2016 Maxime BINET. All rights reserved.
//

import UIKit

class ViewController: UIViewController, APITwitterDelegate, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var tab : [Tweet] = []
    
/* TABVIEW FUNCTIONS*/
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tab.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("tweetCell") as! TweetTableViewCell
        print("\n\n")
        print(self.tab[indexPath.row])
        print("\n\n")
        cell.tweet = self.tab[indexPath.row]
        return cell
    }
    
    func handleTweet(tweet: Tweet) {
        self.tab.append(tweet)
        if self.tab.count > 99 {
            self.build()
        }
    }
    
    func handleError(err: NSError) {
        print(err)
    }
    
    func build() {
        dispatch_async(dispatch_get_main_queue(), {
            self.tableView.reloadData()
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getToken()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var dic: NSDictionary = [:] {
        didSet {
            print("dic set")
            print(dic["access_token"]!)
            let api = APIController(deleg: self, tok: dic["access_token"]! as! String)
            api.req("ecole42")
        }
    }
    
    func getToken() {
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
//            print(response)
            if let err = error {
                print(err)
            }
            else if let d = data {
                do {
                    if let dic : NSDictionary = try NSJSONSerialization.JSONObjectWithData(d, options: NSJSONReadingOptions.MutableContainers) as? NSDictionary {
                        self.dic = dic
                    }
                }
                catch (let err) {
                    print(err)
                }
            }
        }
        task.resume()
    }
    
    @IBAction func btn(sender: UIButton) {
        getToken()
    }
}

