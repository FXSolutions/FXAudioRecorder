//
//  MainRecorderView.swift
//  FXAudioRecorder
//
//  Created by kioshimafx on 2/14/16.
//  Copyright © 2016 FXSolutions. All rights reserved.
//

import UIKit

class MainRecorderView: UIView {
    
    let testRecord = UIButton(type: UIButtonType.System)
    
    convenience init() {
        self.init(frame:CGRectZero)
        render()
    }
    
    func render() {
        backgroundColor = .whiteColor()
        
        sv([
            testRecord.text("Test").style(buttonSytle).tap(loginTapped)
            ])
        
        layout([
            80,
            |-testRecord-| ~ 80
            ])
    }
    
    func fieldStyle(f:UITextField) {
        f.borderStyle = .RoundedRect
        f.font = UIFont(name: "Avenir-Book", size: 24)
        f.returnKeyType = .Next
    }
    
    func passwordFieldStyle(f:UITextField) {
        f.secureTextEntry = true
        f.returnKeyType = .Done
    }
    
    func buttonSytle(b:UIButton) {
        b.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        b.setTitleColor(UIColor ( red: 0.0, green: 0.6574, blue: 1.0, alpha: 1.0 ), forState: UIControlState.Highlighted)
        b.backgroundColor = UIColor.lightGrayColor().colorWithAlphaComponent(0.5)
        b.titleLabel?.font = UIFont(name: "Avenir-Book", size: 24)
    }
    
    func loginTapped() {
        //Do something
        print("WOWOW")
        
        SCListener.sharedListener().listen()
        
        
    }
    
}
