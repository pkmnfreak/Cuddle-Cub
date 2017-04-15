//
//  lightViewController.swift
//  Cuddle Cub
//
//  Created by Evan Chang on 4/14/17.
//  Copyright © 2017 Evan Chang. All rights reserved.
//

import Foundation
import UIKit

class lightViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    //TODO: Fix autolayout, crop image, round out button
    
    @IBOutlet var wakeUpColor: UIPickerView!
    
    @IBOutlet var bedTimeColor: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wakeUpColor.delegate = self
        bedTimeColor.delegate = self
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
    
    var bedTimeColors = ["Red", "Orange", "Yellow"]
    var wakeUpColors = ["Green", "Blue", "Purple"]
    let color = UIColor(red:0.44, green:0.34, blue:0.59, alpha:1.0)
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == bedTimeColor {
            return bedTimeColors.count
        } else {
            return wakeUpColors.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        if pickerView == bedTimeColor {
            return NSAttributedString(string: bedTimeColors[row], attributes: [NSForegroundColorAttributeName: color])
        } else {
            return NSAttributedString(string: wakeUpColors[row], attributes: [NSForegroundColorAttributeName: color])
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == bedTimeColor {
            //pickerView1
        }
        pickerView.reloadAllComponents()
    }
    
    
}
