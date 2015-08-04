//
//  ViewMan5.swift
//  Fitting Room
//
//  Created by Michael on 15/8/2.
//  Copyright (c) 2015年 Michael. All rights reserved.
//

import Foundation
import UIKit

class ViewMan5 : UIViewController{
    
    
    
    @IBOutlet weak var personal5: UIImageView!
    
    var newimage5: UIImage?
    
    @IBAction func newbutton(sender: AnyObject) {
        
        performSegueWithIdentifier("gogo", sender: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personal5.image = newimage5
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "gogo" {
            
            var DestViewController5 : ViewMan6 = segue.destinationViewController as! ViewMan6
            
            DestViewController5.newimage6 = personal5.image
            
        }
    }
    
}