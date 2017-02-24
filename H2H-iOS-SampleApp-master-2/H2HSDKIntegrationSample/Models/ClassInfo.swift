//
//  ClassInfo.swift
//  H2HSDKIntegrationSample
//
//  Created by Rahul Murthy on 1/28/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class ClassInfo: NSObject {
    var name:String?
    var meetingID:String?
    var profName:String?
    var StartTime:String?
    var Duration:String?
    var studentList = [Student]()
    var classDescription: String?
    
    init(name:String, meetingID:String, profName:String, StartTime:String, Duration:String?, students:[Student], description:String){
        self.name = name
        self.profName = profName
        self.meetingID = meetingID
        self.StartTime = StartTime
        self.Duration = Duration
        self.studentList = students
        self.classDescription = description
    }
}
