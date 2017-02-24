//
//  ClassSession.swift
//  H2HSDKIntegrationSample
//
//  Created by Rahul Murthy on 1/27/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase


class ClassSession{

    var title :String?
    var description: String?
    var prof: String?
    var duration: String?
    var roomID: String?

    init(snapshot: FIRDataSnapshot){
        self.roomID = snapshot.value!["meetingID"] as? String
        self.title = snapshot.value!["name"] as? String
        self.description = snapshot.value!["prof"] as? String
    }
}
