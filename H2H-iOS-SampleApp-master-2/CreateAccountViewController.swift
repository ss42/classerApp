//
//  CreateAccountViewController.swift
//  H2HSDKIntegrationSample
//
//  Created by Sanjay Shrestha on 1/28/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        password.delegate = self
        emailText.delegate = self
        lastName.delegate = self
        firstName.delegate = self
        self.view.applyGradient([Constants.Colors.mainColor, Constants.Colors.secondaryColor], locations: [0.2, 0.9, 0.9])
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        //isbnTextfield.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor).active = true
        return false
    }
    func textFieldDidEndEditing(textField: UITextField) {
        self.view.endEditing(true)
        
    }



}
