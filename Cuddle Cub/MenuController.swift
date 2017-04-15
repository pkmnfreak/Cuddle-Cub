//
//  MenuController.swift
//  Cuddle Cub
//
//  Created by Evan Chang on 4/14/17.
//  Copyright © 2017 Evan Chang. All rights reserved.
//

import Foundation
import UIKit

class MenuController: UITableViewController {
    
    let views = ["Home", "Profile", "Schedule", "Sound", "Light", "Setting"]
    let segues = ["embedInitialCenterController", "toProfileCenter", "toScheduleCenter", "toSoundCenter", "toLightCenter", "toSettingsCenter"]
    
    private var previousIndex: NSIndexPath?
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    let viewFrame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 120)
    let imageFrame = CGRect.init(x: 0, y: 0, width: 100, height: 100)
    let textFrame = CGRect.init(x: 15, y: 10, width: UIScreen.main.bounds.size.width - 15, height: 120)
    
    override func viewDidLoad() {
        let view = UIView(frame: viewFrame)
        //make button and set action and add into view
        //make one image view
        let pic = UIImage.init(named: "profilePic")
        let imageView = UIImageView(frame: imageFrame)
        imageView.image = pic
        let textView = UITextField(frame: textFrame)
        textView.text = "    Amy Smith"
        textView.font = UIFont(name:"HelveticaNeue-Bold", size: 22.0)
        let gray = UIColor(red:0.55, green:0.55, blue:0.55, alpha:1.0)
        textView.textColor = gray
        textView.leftViewMode = UITextFieldViewMode.always
        textView.leftView = imageView
        view.addSubview(textView)
        //set view into tablefooterview
        self.tableViewOutlet.tableHeaderView = view
        super.viewDidLoad()
    }

    @IBOutlet var tableViewOutlet: UITableView!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return views.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell") as! menuCell
        cell.labelOutlet.text = views[indexPath.row]
        cell.imageOutlet.image = UIImage(named: views[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath)  {
        
        if let index = previousIndex {
            tableView.deselectRow(at: index as IndexPath, animated: true)
        }
        
        sideMenuController?.performSegue(withIdentifier: segues[indexPath.row], sender: nil)
        previousIndex = indexPath as NSIndexPath?
    }
    
}
