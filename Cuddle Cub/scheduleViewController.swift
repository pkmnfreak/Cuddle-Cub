//
//  scheduleViewController.swift
//  Cuddle Cub
//
//  Created by Evan Chang on 4/14/17.
//  Copyright © 2017 Evan Chang. All rights reserved.
//

import Foundation
import UIKit
import HGCircularSlider

extension Date {
    
}

class scheduleViewController: UIViewController {
    
    //TODO: Fix autolayout, crop image, round out button
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    let size = CGSize(width: 30, height: 30)
    var enableTouches = true
    
    override func viewDidAppear(_ animated: Bool) {
        
        let purple = UIColor(red:0.44, green:0.34, blue:0.59, alpha:1.0)
        self.navigationController?.navigationBar.barTintColor = purple
        self.navigationController?.navigationBar.titleTextAttributes = [
            NSForegroundColorAttributeName : UIColor.white
        ]
        let bedTime = resizeImage(image: UIImage(named: "bedTime")!, targetSize: size)
        let wakeUp = resizeImage(image: UIImage(named: "wakeUp")!, targetSize: size)
        
        sliderViewOutlet.startThumbImage = bedTime
        sliderViewOutlet.endThumbImage = wakeUp
        
        let dayInSeconds = 24 * 60 * 60
        sliderViewOutlet.maximumValue = CGFloat(dayInSeconds)
        
        sliderViewOutlet.startPointValue = CGFloat(1 * 60 * 60)
        sliderViewOutlet.endPointValue = CGFloat(8 * 60 * 60)
        if enableTouches {
            updateTexts(sliderViewOutlet)
        }
    }
    
    @IBOutlet var wakeLabel: UILabel!
    
    @IBOutlet var bedtimeLabel: UILabel!
    
    @IBAction func updateTexts(_ sender: AnyObject) {
        let bedtime = TimeInterval(sliderViewOutlet.startPointValue)
        let bedtimeDate = Date(timeIntervalSinceReferenceDate: bedtime)
        bedtimeLabel.text = dateFormatter.string(from: bedtimeDate)
        
        let wake = TimeInterval(sliderViewOutlet.endPointValue)
        let wakeDate = Date(timeIntervalSinceReferenceDate: wake)
        wakeLabel.text = dateFormatter.string(from: wakeDate)
        
        let duration = wake - bedtime
        let durationDate = Date(timeIntervalSinceReferenceDate: duration)
        dateFormatter.dateFormat = "HH:mm"

        timeLabelOutlet.text = dateFormatter.string(from: durationDate)
        dateFormatter.dateFormat = "hh:mm a"
    }
    
    lazy var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        dateFormatter.dateFormat = "hh:mm a"
        return dateFormatter
    }()
    
    @IBOutlet var timeLabelOutlet: UILabel!
    
    @IBOutlet var sliderViewOutlet: RangeCircularSlider!
    
    func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
        let size = image.size
        
        let widthRatio  = targetSize.width  / image.size.width
        let heightRatio = targetSize.height / image.size.height
        
        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
        }
        
        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)
        
        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segmentPressed(_ sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 1) {
            self.enableTouches = false
            dimScreenView.alpha = 1
        } else {
            self.enableTouches = true
            dimScreenView.alpha = 0
        }
    }
    
    @IBAction func repeatButtonWasPressed(_ sender: Any) {
        if enableTouches {
            performSegue(withIdentifier: "scheduleToRepeat", sender: Any?.self)
        } else {
            
        }
    }
    
    @IBAction func alarmPressed(_ sender: Any) {
        if enableTouches {
            performSegue(withIdentifier: "scheduleToLabel", sender: Any?.self)
        } else {
            
        }
    }
    
    @IBOutlet var dimScreenView: UIView!
    
}
