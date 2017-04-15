//
//  homeViewController.swift
//  Cuddle Cub
//
//  Created by Evan Chang on 4/12/17.
//  Copyright © 2017 Evan Chang. All rights reserved.
//

import Foundation
import UIKit

class homeViewController: UIViewController {
    
    //TODO: Fix autolayout, crop image, round out button
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let calendar = UIButton.init(type: .custom)
        calendar.setImage(UIImage.init(named: "calendar"), for: UIControlState.normal)
        calendar.addTarget(self, action: #selector(homeViewController.calendarMethod), for: UIControlEvents.touchUpInside)
        let xPos = (self.navigationController?.navigationBar.frame.size.width)! - 30
        calendar.frame = CGRect.init(x: xPos, y: 0, width: 30, height: 30)
        let calendarButton = UIBarButtonItem.init(customView: calendar)
        self.navigationItem.rightBarButtonItem = calendarButton
        
        let purple = UIColor(red:0.44, green:0.34, blue:0.59, alpha:1.0)
        self.navigationController?.navigationBar.barTintColor = purple

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cycleButton(_ sender: Any) {
        performSegue(withIdentifier: "homeToCycle", sender: Any?.self)
    }
    
    func callMethod() {
        //do stuff here
    }
    
    func calendarMethod() {
        //segue
    }
    
}
