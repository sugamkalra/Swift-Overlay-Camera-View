//
//  ViewController.swift
//  OverlayDemo
//
//  Created by Sugam Kalra on 06/01/16.
//  Copyright © 2016 Sugam Kalra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    override func viewDidAppear(animated: Bool)
    {
        
        super.viewDidAppear(true)
        
        let overlay = Overlay(frame: CGRectMake(0, 0, 320, 480))
        
        // Create a new image picker instance
        let picker = UIImagePickerController()
        
        // Set the image picker source:
        picker.sourceType = UIImagePickerControllerSourceType.Camera
        
        // Hide the controls:
        picker.showsCameraControls = true
        picker.navigationBarHidden = true
        
        picker.cameraViewTransform = CGAffineTransformScale(picker.cameraViewTransform, 1, 1.24299);
        
        // Insert the overlay:
        picker.cameraOverlayView = overlay;
        
        // Show the picker:
        self.presentViewController(picker, animated: true) { () -> Void in
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

