//
//  Student.swift
//  H2HSDKIntegrationSample
//
//  Created by Rahul Murthy on 1/28/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class Student: NSObject {
    var name:String?
    var email:String?
    init(name:String, email:String){
        self.name = name
        self.email = email
    }
}

