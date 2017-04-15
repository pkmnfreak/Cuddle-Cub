//
//  soundViewController.swift
//  Cuddle Cub
//
//  Created by Evan Chang on 4/14/17.
//  Copyright © 2017 Evan Chang. All rights reserved.
//

import Foundation
import UIKit

class soundViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {
    
    //TODO: Fix autolayout, crop image, round out button
    
    @IBOutlet var wakeUpPicker: UIPickerView!
    
    @IBOutlet var bedTimePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wakeUpPicker.delegate = self
        bedTimePicker.delegate = self
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
    
    
    var bedTimeSounds = ["Waves", "White Noise", "Wind"]
    var wakeUpSounds = ["Birds Chirping", "Good Morning", "Sun Rise"]
    let color = UIColor(red:0.44, green:0.34, blue:0.59, alpha:1.0)

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == bedTimePicker {
            return bedTimeSounds.count
        } else {
            return wakeUpSounds.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        if pickerView == bedTimePicker {
            return NSAttributedString(string: bedTimeSounds[row], attributes: [NSForegroundColorAttributeName: color])
        } else {
            return NSAttributedString(string: wakeUpSounds[row], attributes: [NSForegroundColorAttributeName: color])
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == bedTimePicker {
            //pickerView1
        } else if pickerView == wakeUpPicker{
            //pickerView2
        }
        pickerView.reloadAllComponents()
    }
    
}
