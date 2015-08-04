//
//  ViewWoman3.swift
//  Fitting Room
//
//  Created by Michael on 15/8/3.
//  Copyright (c) 2015年 Michael. All rights reserved.
//

import Foundation
import UIKit

class ViewWoman3 : UIViewController{
    
    
    
    @IBOutlet weak var personalw3: UIImageView!
    
    var newimagew3: UIImage?
    
    @IBAction func newbuttonw(sender: AnyObject) {
        
        performSegueWithIdentifier("gotonextw", sender: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personalw3.image = newimagew3
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "gotonextw" {
            
            var DestViewController4 : ViewWoman4 = segue.destinationViewController as! ViewWoman4
            
            DestViewController4.newimagew4 = personalw3.image
            
        }
    }
    
}