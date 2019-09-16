//
//  FourthViewController.swift
//  makeMyWeek
//
//  Created by Michael Knop on 5/8/19.
//  Copyright © 2019 Michael Knop. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    @IBOutlet weak var gif3: UIImageView!
    
    @IBOutlet weak var gif2: UIImageView!
    @IBOutlet weak var gif1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        gif2.loadGif(name: "panda")
        gif1.loadGif(name: "grass")
        gif3.loadGif(name: "moregrass")

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
