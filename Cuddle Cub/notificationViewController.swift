//
//  notificationViewController.swift
//  Cuddle Cub
//
//  Created by Evan Chang on 4/14/17.
//  Copyright © 2017 Evan Chang. All rights reserved.
//

import Foundation
import UIKit

class notificationViewController: UIViewController {
    
    //TODO: Fix autolayout, crop image, round out button
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    @IBOutlet var childWakesUp: UILabel!
    
    @IBOutlet var childFallsAsleep: UILabel!
    
    @IBAction func nextWasPressed(_ sender: Any) {
        //store info
        performSegue(withIdentifier: "notificationToHome", sender: Any?.self)
    }
    
    @IBAction func notNowWasPressed(_ sender: Any) {
        performSegue(withIdentifier: "notificationToHome", sender: Any?.self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
      
        let purple = UIColor(red:0.44, green:0.34, blue:0.59, alpha:1.0)
        self.navigationController?.navigationBar.barTintColor = purple
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
