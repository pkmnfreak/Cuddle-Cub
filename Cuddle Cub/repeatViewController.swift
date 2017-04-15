//
//  repeatViewController.swift
//  Cuddle Cub
//
//  Created by Evan Chang on 4/15/17.
//  Copyright © 2017 Evan Chang. All rights reserved.
//

import Foundation
import UIKit

class repeatViewController: UITableViewController {
    
    //TODO: Fix autolayout, crop image, round out button
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet var tableViewOutlet: UITableView!
    
    override func viewDidAppear(_ animated: Bool) {
        
        let purple = UIColor(red:0.44, green:0.34, blue:0.59, alpha:1.0)
        self.navigationController?.navigationBar.barTintColor = purple
        self.navigationController?.navigationBar.titleTextAttributes = [
            NSForegroundColorAttributeName : UIColor.white
        ]
        
        
    }
    
    let repetition = ["Every Sunday", "Every Monday", "Every Tuesday", "Every Wednesday", "Every Thursday", "Every Friday", "Every Saturday"]
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repetition.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "repeatCell") as! repeatCell
        cell.repeatLabel.text = repetition[indexPath.row]
        cell.checkImage.isHidden = true
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath)  {
        let cell = tableView.dequeueReusableCell(withIdentifier: "repeatCell", for: indexPath) as! repeatCell
        cell.repeatLabel.text = repetition[indexPath.row]
        cell.checkImage.isHidden = false
    }
    
}
