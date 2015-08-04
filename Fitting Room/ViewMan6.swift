//
//  ViewMan6.swift
//  Fitting Room
//
//  Created by Michael on 15/8/2.
//  Copyright (c) 2015年 Michael. All rights reserved.
//

import Foundation
import UIKit

class ViewMan6 : UIViewController{
    
    
    @IBOutlet weak var personalimage6: UIImageView!
    
    var newimage6: UIImage?
    
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
    
    //@IBOutlet weak var tshirt6: UIImageView!
    
    
    /*override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        
        var touch : UITouch! = touches.first as? UITouch
        
        location = touch.locationInView(self.view)
        
        tshirt6.center = location
        
    }
    
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        var touch : UITouch! = touches.first as? UITouch
        
        location = touch.locationInView(self.view)
        
        tshirt6.center = location
        
    }*/
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        personalimage6.image = newimage6
        
        //tshirt6.center = CGPointMake(100, 100)
        
        
        
        
    }
    
}
