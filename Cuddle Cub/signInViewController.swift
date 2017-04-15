//
//  ViewController.swift
//  Cuddle Cub
//
//  Created by Evan Chang on 4/12/17.
//  Copyright © 2017 Evan Chang. All rights reserved.
//

import UIKit

class signInViewController: UIViewController {

    //TODO: Fix autolayout, crop image, round out button
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func forgotPasswordWasPressed(_ sender: Any) {
        performSegue(withIdentifier: "signInToSignUp", sender: Any?.self)
    }

    @IBAction func loginWasPressed(_ sender: Any) {
        performSegue(withIdentifier: "loginToHome", sender: Any?.self)
    }
    
    @IBAction func forgotButton(_ sender: Any) {
        performSegue(withIdentifier: "loginToForgot", sender: Any?.self)
    }
}

