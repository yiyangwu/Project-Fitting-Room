//
//  ViewWoman5.swift
//  Fitting Room
//
//  Created by Michael on 15/8/3.
//  Copyright (c) 2015年 Michael. All rights reserved.
//

import Foundation
import UIKit

class ViewWoman5 : UIViewController{
    
    @IBOutlet weak var personalw5: UIImageView!
    
    var newimagew5: UIImage?
    
    @IBAction func newbuttonw(sender: AnyObject) {
        
        performSegueWithIdentifier("gogow", sender: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personalw5.image = newimagew5
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "gogow" {
            
            var DestViewController5 : ViewWoman6 = segue.destinationViewController as! ViewWoman6
            
            DestViewController5.newimagew6 = personalw5.image
            
        }
    }
    
}