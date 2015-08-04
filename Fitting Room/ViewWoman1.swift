//
//  ViewWoman1.swift
//  Fitting Room
//
//  Created by Michael on 15/8/3.
//  Copyright (c) 2015年 Michael. All rights reserved.
//

import Foundation
import UIKit

class ViewWoman1 : UIViewController{
    
    
    @IBOutlet weak var personalw1: UIImageView!
    
    
    var newimagew: UIImage?
    
    @IBAction func gofitw(sender: AnyObject) {
        
        performSegueWithIdentifier("goodtogow", sender: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personalw1.image = newimagew
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "goodtogow" {
            
            var DestViewController1 : ViewWoman2 = segue.destinationViewController as! ViewWoman2
            
            DestViewController1.newimagew1 = personalw1.image
            
        }
    }
    
}
