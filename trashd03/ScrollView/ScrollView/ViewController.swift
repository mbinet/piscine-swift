//
//  ViewController.swift
//  ScrollView
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
        scrollView.maximumZoomScale = 100
        scrollView.minimumZoomScale = 0.3
    }

    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return imageView
    }

}

