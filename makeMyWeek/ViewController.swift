//
//  ViewController.swift
//  makeMyWeek
//
//  Created by Michael Knop on 4/29/19.
//  Copyright © 2019 Michael Knop. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    var images: [String] = ["reLax", "calm", "pic3"]
    var frame = CGRect(x:0,y:0,width:0,height:0)

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.numberOfPages = images.count
        for index in 0..<images.count{
            frame.origin.x = scrollView.frame.size.width
            * CGFloat(index)
            frame.size = scrollView.frame.size
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: images[index])
            self.scrollView.addSubview(imgView)
        }
        scrollView.contentSize = CGSize(width: (scrollView.frame.size.width * CGFloat(images.count)), height: scrollView.frame.size.height)
        scrollView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        var pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pageNumber)
    
    }



}

