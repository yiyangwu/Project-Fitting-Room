//
//  ViewMan1.swift
//  Fitting Room
//
//  Created by Michael on 15/7/30.
//  Copyright (c) 2015年 Michael. All rights reserved.
//

import Foundation
import UIKit

class ViewMan1 : UIViewController{

    
    @IBOutlet weak var personal1: UIImageView!

    
    var newimage: UIImage?

    @IBAction func gofit(sender: AnyObject) {
        
    performSegueWithIdentifier("goodtogo", sender: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personal1.image = newimage
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "goodtogo" {
    
        var DestViewController1 : ViewMan2 = segue.destinationViewController as! ViewMan2
        
        DestViewController1.newimage1 = personal1.image
        
    }
    }
    
}
