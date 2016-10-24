//
//  ViewController.swift
//  PitchPerfectProject
//
//  Created by Flatiron School on 10/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordButton: UIButton!

    @IBOutlet weak var statusLabel: UILabel!
   
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.removeConstraints(view.constraints)
        recordButton.translatesAutoresizingMaskIntoConstraints = false
        recordButton.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor).active = true
        recordButton.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor).active = true
        recordButton.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor, multiplier: 0.30).active = true
        recordButton.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.10).active = true
        
        //updateLabel constraints
        //view.removeConstraints(self.updateLabel.constraints)
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor).active = true
        statusLabel.topAnchor.constraintEqualToAnchor(self.recordButton.bottomAnchor).active = true
        statusLabel.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor, multiplier: 0.18).active = true
        
        //stopRecordButton constraints
        stopButton.translatesAutoresizingMaskIntoConstraints = false
        stopButton.topAnchor.constraintEqualToAnchor(self.statusLabel.bottomAnchor).active = true
        stopButton.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor).active = true
        stopButton.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor, multiplier: 0.20).active = true
        stopButton.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.10).active = true
 
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidLoad()
        stopButton.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordButtonTapped(sender: AnyObject) {
        print("record button tapped")
        self.statusLabel.text = "Recording"
        stopButton.enabled = true
        recordButton.enabled = false
        
    }
   
    @IBAction func stopButtonTapped(sender: AnyObject) {
        print("stop button tapped")
        self.statusLabel.text = "stopped Recording"
        stopButton.enabled = false
        recordButton.enabled = true 
    }
   
  


}

