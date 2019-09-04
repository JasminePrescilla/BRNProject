//
//  ViewController.swift
//  pulseProject
//
//  Created by Madanu Jasmine Prescilla on 9/4/19.
//  Copyright © 2019 Madanu Jasmine Prescilla. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class ViewController: UIViewController , UITextFieldDelegate {
    
    var firstNameTf:UITextField!
    var lastNameTf:UITextField!
    var passwordTF:UITextField!
    
    var mainView:UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        signinPage()
    }
    
    func signinPage()
    {
        
       
    mainView = UIView()
    mainView.backgroundColor = UIColor.white
        mainView.frame = CGRect(x: 0, y: 0, width: 600, height: 1000)
    view.addSubview(mainView)
       
        let firstNameTf = SkyFloatingLabelTextField(frame: CGRect(x: 60, y: 200, width: 300, height: 45))
        firstNameTf.placeholder = " First Name "
        firstNameTf.title = "Your full name"
        firstNameTf.font = UIFont(name: (firstNameTf.font?.fontName)!, size: 20)
        firstNameTf.lineHeight = 4.0 // bottom line height in points
        firstNameTf.selectedLineHeight = 3.0
        view.addSubview(firstNameTf)
        
        let whiteColor = UIColor(red: 197/255, green: 205/255, blue: 205/255, alpha: 1.0)
        let darkGreyColor = UIColor(red: 52/255, green: 42/255, blue: 61/255, alpha: 2.0)
        let overcastBlueColor = UIColor(red: 0, green: 187/255, blue: 204/255, alpha: 1.0)
        
        
        let lastNameTf = SkyFloatingLabelTextField(frame: CGRect(x: 60, y: 280, width: 300, height: 45))
        lastNameTf.placeholder = "Last name"
        lastNameTf.title = "Family name"
        
        lastNameTf.tintColor = overcastBlueColor // the color of the blinking cursor
        lastNameTf.textColor = darkGreyColor
        lastNameTf.lineColor = whiteColor
        lastNameTf.selectedTitleColor = overcastBlueColor
        lastNameTf.selectedLineColor = overcastBlueColor
        lastNameTf.font = UIFont(name: (lastNameTf.font?.fontName)!, size: 20)
        lastNameTf.lineHeight = 4.0 // bottom line height in points
        lastNameTf.selectedLineHeight = 3.0
        self.view.addSubview(lastNameTf)
    
    }
    
   
    
}
