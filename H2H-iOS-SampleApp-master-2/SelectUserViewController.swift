//
//  SelectUserViewController.swift
//  H2HSDKIntegrationSample
//
//  Created by sanjay on 1/27/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class SelectUserViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var student: UIButton!
    @IBOutlet weak var teacher: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.applyGradient([Constants.Colors.mainColor, Constants.Colors.secondaryColor], locations: [0.2, 0.9, 0.9])
        
        let prefs = NSUserDefaults.standardUserDefaults()
        if prefs.boolForKey("loggedIn") == true{
           // performSegueWithIdentifier("home", sender: nil)
        }
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        //a tap dismisses a keyboard
//        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyBoard")
//        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }

    @IBAction func loginPressed(sender: AnyObject) {
        let prefs = NSUserDefaults.standardUserDefaults()
        prefs.setValue(true, forKey: "tabbar")


        
        
        
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        let prefs = NSUserDefaults.standardUserDefaults()
        if prefs.boolForKey("loggedIn") == true{
           // performSegueWithIdentifier("tabbar", sender: nil)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func student(sender: AnyObject) {
        teacher.backgroundColor = UIColor.clearColor()
        student.backgroundColor = Constants.Colors.mainColor
        
        
    }
    @IBAction func teacher(sender: AnyObject) {
        student.backgroundColor = UIColor.clearColor()
        teacher.backgroundColor = Constants.Colors.mainColor
        
        
        
    }
   
    func dissmissKeyBoard(){
        view.endEditing(true)

    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        //isbnTextfield.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor).active = true
        return false
    }
    func textFieldDidEndEditing(textField: UITextField) {
        self.view.endEditing(true)

    }

   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
