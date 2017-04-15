//
//  forgotPasswordViewController.swift
//  Cuddle Cub
//
//  Created by Evan Chang on 4/15/17.
//  Copyright © 2017 Evan Chang. All rights reserved.
//

import Foundation
import UIKit

class forgotPasswordViewController: UIViewController {
    
    //TODO: Fix autolayout, crop image, round out button
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let purple = UIColor(red:0.44, green:0.34, blue:0.59, alpha:1.0)
        self.navigationController?.navigationBar.barTintColor = purple
        self.navigationController?.navigationBar.titleTextAttributes = [
            NSForegroundColorAttributeName : UIColor.white
        ]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(_ sender: Any) {
        performSegue(withIdentifier: "forgotToLogin", sender: Any?.self)
    }
    
    @IBAction func sendButton(_ sender: Any) {
        performSegue(withIdentifier: "forgotToSent", sender: Any?.self)
    }
}
