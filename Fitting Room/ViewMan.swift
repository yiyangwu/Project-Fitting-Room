//
//  ViewMan.swift
//  Fitting Room
//
//  Created by Michael on 15/7/30.
//  Copyright (c) 2015年 Michael. All rights reserved.
//

import Foundation
import UIKit

class ViewMan : UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var personalimage: UIImageView!
    @IBOutlet weak var personalimagenew: UIImageView!
    

   // @IBOutlet weak var tshirt: UIImageView!
    
    var image : UIImage?
    
    override func viewDidLoad() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func uploadbutton(sender: AnyObject) {
        
        var mypickercontroller = UIImagePickerController()
        mypickercontroller.delegate = self;
        mypickercontroller.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        
        self.presentViewController(mypickercontroller, animated: true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        
        personalimage.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    @IBAction func Button(sender: AnyObject) {
        
        performSegueWithIdentifier("toBrowsePage", sender: nil)
        
        
        }
    
    @IBAction func Button2(sender: AnyObject) {
        
        performSegueWithIdentifier("second", sender: nil)
        
    }
    
    
    @IBAction func Button3(sender: AnyObject) {
        
        performSegueWithIdentifier("third", sender: nil)
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toBrowsePage" {
            
            var DestViewController :ViewMan1 = segue.destinationViewController as! ViewMan1
        
            DestViewController.newimage = personalimage.image
            
        }
    
        if segue.identifier == "second" {
            
            var DestViewController :ViewMan3 = segue.destinationViewController as! ViewMan3
            
            DestViewController.newimage3 = personalimagenew.image
            
        }
        
        if segue.identifier == "third" {
            
            var DestViewController :ViewMan5 = segue.destinationViewController as! ViewMan5
            
            DestViewController.newimage5 = personalimagenew.image
            
        }

        

        
    }
    
}
