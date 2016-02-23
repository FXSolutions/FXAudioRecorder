//
//  ViewController.swift
//  FXAudioRecorder
//
//  Created by kioshimafx on 2/13/16.
//  Copyright © 2016 FXSolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() { view = MainRecorderView() }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Here we want to reload the view after injection
        on("INJECTION_BUNDLE_NOTIFICATION") {
            self.view = MainRecorderView()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

