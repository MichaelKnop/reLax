//
//  SecondViewController.swift
//  makeMyWeek
//
//  Created by Michael Knop on 5/6/19.
//  Copyright © 2019 Michael Knop. All rights reserved.
//

import UIKit
import FirebaseDatabase
// Above ViewController declaration, add these items so they can be passed forward
var selection:Int = 0
var postData = [[String: String]]() // initialize as an array of dictionaries (key: value pairs); sort of like json
class Global {
    var nameInput:String = ""
    
}
let global = Global()


class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var newsItems = [String]()
    var ref:DatabaseReference?
    var databaseHandle:DatabaseHandle?
    @IBOutlet weak var theNews: UITableView!
    @IBAction func go(_ sender: Any) {
        let segues = ["pushWater", "pushGrass", "showOther"]
        
        let index = Int(arc4random_uniform(UInt32(segues.count)))
        
        let segueName = segues[index]
        
        self.performSegue(withIdentifier: segueName, sender: self)
    }
    @IBOutlet weak var nameType: UITextField!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsItems.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell")
        cell?.textLabel?.text = newsItems[indexPath.row]
        return cell!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        theNews.delegate = self
        theNews.dataSource = self
        ref=Database.database().reference()
        
        databaseHandle = ref?.child("Posts").observe(.childAdded, with: { (snapshot) in
            //code to execute when a child is added
            //take the value from snapshot, add to postData array and reload TableView
            let post = snapshot.value as? String
            self.newsItems.append(post!)
            self.theNews.reloadData()
        })
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

