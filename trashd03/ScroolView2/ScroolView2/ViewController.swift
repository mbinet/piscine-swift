//
//  ViewController.swift
//  ScroolView2
//
//  Created by Maxime BINET on 10/6/16.
//  Copyright © 2016 Maxime BINET. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    var imageView : UIImageView?
    var image : UIImage?
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image = UIImage(named: "42")
        imageView = UIImageView(image: image)
        scrollView.addSubview(imageView!)
        scrollView.contentSize = (imageView?.frame.size)!
        scrollView.maximumZoomScale = 10
        scrollView.minimumZoomScale = 0.3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return imageView
    }

}

