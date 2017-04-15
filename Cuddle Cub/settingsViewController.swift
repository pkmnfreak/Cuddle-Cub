//
//  settingsViewController.swift
//  Cuddle Cub
//
//  Created by Evan Chang on 4/14/17.
//  Copyright © 2017 Evan Chang. All rights reserved.
//

import Foundation
import UIKit

class settingsViewController: UITableViewController {
    
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
    
    let settings = ["Change profile photo", "Change name", "Change password", "Help", "Refer this app"]
    let segues = ["settingsToPhoto", "settingsToName", "settingsToPassword", "settingsToHelp", "settingsToRefer"]
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell") as! settingCell
        cell.settingOutlet.text = settings[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath)  {
        performSegue(withIdentifier: segues[indexPath.row], sender: nil)
    }
    
}
