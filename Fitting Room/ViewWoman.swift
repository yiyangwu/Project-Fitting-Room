//
//  ViewWoman.swift
//  Fitting Room
//
//  Created by Michael on 15/7/30.
//  Copyright (c) 2015年 Michael. All rights reserved.
//

import Foundation
import UIKit

class ViewWoman : UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var personalimageww: UIImageView!

    // @IBOutlet weak var tshirt: UIImageView!
    
    var imagew : UIImage?
    
    override func viewDidLoad() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func uploadbuttonw(sender: AnyObject) {
        
        var mypickercontroller = UIImagePickerController()
        mypickercontroller.delegate = self;
        mypickercontroller.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        
        self.presentViewController(mypickercontroller, animated: true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        
        personalimageww.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    @IBAction func Buttonw(sender: AnyObject) {
        
        performSegueWithIdentifier("toBrowsePagew", sender: nil)
        
        
    }
    
    @IBAction func Buttonw2(sender: AnyObject) {
        
        performSegueWithIdentifier("secondw", sender: nil)
        
    }
    
    
    @IBAction func Buttonw3(sender: AnyObject) {
        
        performSegueWithIdentifier("thirdw", sender: nil)
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toBrowsePagew" {
            
            var DestViewController :ViewWoman1 = segue.destinationViewController as! ViewWoman1
            
            DestViewController.newimagew = personalimageww.image
            
        }
        
        if segue.identifier == "secondw" {
            
            var DestViewController :ViewWoman3 = segue.destinationViewController as! ViewWoman3
            
            DestViewController.newimagew3 = personalimageww.image
            
        }
        
        if segue.identifier == "thirdw" {
            
            var DestViewController :ViewWoman5 = segue.destinationViewController as! ViewWoman5
            
            DestViewController.newimagew5 = personalimageww.image
            
        }
        
        
        
        
    }
    
}
