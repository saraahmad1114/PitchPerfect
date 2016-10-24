//
//  ViewController.swift
//  PitchPerfectProject
//
//  Created by Flatiron School on 10/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordButtonOutlet: UIButton!
    
    @IBOutlet weak var updateLabel: UILabel!
    
    @IBOutlet weak var stopRecordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.removeConstraints(view.constraints)
        
        //recordingButtonOutlet constraints
        recordButtonOutlet.translatesAutoresizingMaskIntoConstraints = false
        recordButtonOutlet.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor).active = true
        recordButtonOutlet.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor).active = true
        recordButtonOutlet.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor, multiplier: 0.50).active = true
        recordButtonOutlet.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.10).active = true
     
        //updateLabel constraints
        //view.removeConstraints(self.updateLabel.constraints)
        updateLabel.translatesAutoresizingMaskIntoConstraints = false
        updateLabel.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor).active = true
        updateLabel.topAnchor.constraintEqualToAnchor(self.recordButtonOutlet.bottomAnchor).active = true
        
        //stopRecordButton constraints
        stopRecordButton.translatesAutoresizingMaskIntoConstraints = false
        stopRecordButton.topAnchor.constraintEqualToAnchor(self.updateLabel.bottomAnchor).active = true
        stopRecordButton.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor).active = true
        stopRecordButton.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor, multiplier: 0.50).active = true
        stopRecordButton.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.10).active = true 
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordButtonTapped(sender: AnyObject) {
        print("This button was tapped")
    }
  
    @IBAction func stopRecordButtonTapped(sender: AnyObject) {
    }

}

