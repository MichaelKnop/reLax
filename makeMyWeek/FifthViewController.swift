//
//  FifthViewController.swift
//  makeMyWeek
//
//  Created by Michael Knop on 5/8/19.
//  Copyright © 2019 Michael Knop. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    @IBOutlet weak var gif2: UIImageView!
    
    @IBOutlet weak var gif3: UIImageView!
    @IBOutlet weak var gif1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        gif2.loadGif(name: "me")
        gif1.loadGif(name: "me2")
        gif3.loadGif(name: "me1")


        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
