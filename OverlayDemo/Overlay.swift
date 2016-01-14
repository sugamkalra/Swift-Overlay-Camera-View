//
//  Overlay.swift
//  OverlayDemo
//
//  Created by Sugam Kalra on 06/01/16.
//  Copyright © 2016 Sugam Kalra. All rights reserved.
//

import UIKit

class Overlay: UIView
{

     var obstacleViews : [UIView] = []

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func drawRect(rect: CGRect)
    {
        self.alpha = 0.5
        
        let context = UIGraphicsGetCurrentContext()
        
        CGContextSetFillColorWithColor(context, UIColor.lightGrayColor().CGColor);
        CGContextFillRect(context, self.bounds);
        
        let frameCam = CGRectMake(30, 100, 260, 200)
        
        CGContextClearRect(context, frameCam)
        
        // START NEW
        
        let strokeRect = CGRectInset(frameCam, 0, 0);
        
        CGContextSetStrokeColorWithColor(context, UIColor.yellowColor().CGColor);
        CGContextSetLineWidth(context, 1.0);
        CGContextStrokeRect(context, strokeRect);
        // END NEW
        

    }
    
    override init (frame : CGRect)
    {
        super.init(frame : frame)
        
        configureView(frame)
    }
    
    convenience init ()
    {
        self.init(frame:CGRect.zero)
    }
    
    required init(coder aDecoder: NSCoder)
    {
        fatalError("This class does not support NSCoding")
    }
    
    func configureView (rect:CGRect)
    {
        print("Add all the behavior here")
        
        self.opaque = false
        
        self.backgroundColor = UIColor.clearColor()
        
        
    }
    
    
}
