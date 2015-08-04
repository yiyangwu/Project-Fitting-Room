//
//  ViewWoman4.swift
//  Fitting Room
//
//  Created by Michael on 15/8/3.
//  Copyright (c) 2015年 Michael. All rights reserved.
//

import Foundation
import UIKit

class ViewWoman4 : UIViewController{
    
    
    @IBOutlet weak var personalimagew4: UIImageView!
    
    var newimagew4: UIImage?
    
    @IBAction func handlePan(recognizer:UIPanGestureRecognizer) {
        let translation = recognizer.translationInView(self.view)
        if let view = recognizer.view {
            view.center = CGPoint(x:view.center.x + translation.x,
                y:view.center.y + translation.y)
        }
        recognizer.setTranslation(CGPointZero, inView: self.view)
    }
    
    @IBAction func handlePinch(recognizer : UIPinchGestureRecognizer) {
        if let view = recognizer.view {
            view.transform = CGAffineTransformScale(view.transform,
                recognizer.scale, recognizer.scale)
            recognizer.scale = 1
        }
    }
    
    @IBAction func handleRotate(recognizer : UIRotationGestureRecognizer) {
        if let view = recognizer.view {
            view.transform = CGAffineTransformRotate(view.transform, recognizer.rotation)
            recognizer.rotation = 0
        }
    }
    
    //var location = CGPoint(x: 0, y: 0 )
    
    //@IBOutlet weak var tshirtw4: UIImageView!
    
    
   /* override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        
        var touch : UITouch! = touches.first as? UITouch
        
        location = touch.locationInView(self.view)
        
        tshirtw4.center = location
        
    }
    
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        var touch : UITouch! = touches.first as? UITouch
        
        location = touch.locationInView(self.view)
        
        tshirtw4.center = location
        
    }*/
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        personalimagew4.image = newimagew4
        
        //tshirtw4.center = CGPointMake(100, 100)
        
        
        
        
    }
    
}
