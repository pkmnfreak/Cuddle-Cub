//
//  File.swift
//  Cuddle Cub
//
//  Created by Evan Chang on 4/12/17.
//  Copyright © 2017 Evan Chang. All rights reserved.
//

import Foundation

import UIKit

class signUpViewController: UIViewController {
    
    //TODO: Fix autolayout, crop image, round out button
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func joinWasPressed(_ sender: Any) {
        performSegue(withIdentifier: "signUpToProfile", sender: Any?.self)
    }
    
    @IBAction func signInWasPressed(_ sender: Any) {
        performSegue(withIdentifier: "signUpToLogin", sender: Any?.self)
    }
}

