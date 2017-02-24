//
//  TestViewController.swift
//  H2HSDKIntegrationSample
//
//  Created by Sanjay Shrestha on 1/28/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func go(sender: AnyObject) {
//        dispatch_async(dispatch_get_main_queue()) {
//            GUIUtility.sharedInstance.displayLoadingView()
//        }
        dispatch_async(dispatch_get_main_queue()) {
            
            let arraySubViews = UIApplication.sharedApplication().keyWindow?.subviews
            
            if arraySubViews != nil && arraySubViews?.count != 0
            {
                for subView in arraySubViews!
                {
//                    if subView.tag == kTagLoadingViewControllerViewOnWindow
//                    {
//                        subView.removeFromSuperview()
//                    }
                    subView.removeFromSuperview()
                }
            }
        }
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
