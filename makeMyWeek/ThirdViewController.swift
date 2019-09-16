//
//  ThirdViewController.swift
//  FirebaseCore
//
//  Created by Michael Knop on 5/8/19.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var gifView: UIImageView!
    
    @IBOutlet weak var gifView3: UIImageView!
    @IBOutlet weak var gifView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        gifView.loadGif(name: "water")
        gifView2.loadGif(name: "giphy")
        gifView3.loadGif(name: "cartoon")

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
