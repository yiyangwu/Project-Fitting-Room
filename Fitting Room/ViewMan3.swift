//
//  ViewMan3.swift
//  Fitting Room
//
//  Created by Michael on 15/8/2.
//  Copyright (c) 2015年 Michael. All rights reserved.
//

import Foundation
import UIKit

class ViewMan3 : UIViewController{
    
    
    
    @IBOutlet weak var personal3: UIImageView!
    
    var newimage3: UIImage?
    
    @IBAction func newbutton(sender: AnyObject) {
        
    performSegueWithIdentifier("gotonext", sender: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personal3.image = newimage3
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     
        if segue.identifier == "gotonext" {
       
            var DestViewController4 : ViewMan4 = segue.destinationViewController as! ViewMan4
      
           DestViewController4.newimage4 = personal3.image
     
        }
    }
    
}