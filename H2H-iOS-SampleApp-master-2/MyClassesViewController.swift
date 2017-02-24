//
//  MyClassesViewController.swift
//  H2HSDKIntegrationSample
//
//  Created by Sanjay Shrestha on 1/27/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class MyClassesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myClasstableView: UITableView!
    
    @IBOutlet weak var myClassSegment: UISegmentedControl!


    
    var myClasses = ["xya", "abc"]
    
    var ClassList:[ClassInfo] = [ClassInfo]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myClasstableView.delegate = self
        myClasstableView.dataSource = self
        // navigation title & color
        self.navigationItem.title = "Available Classes"
        self.navigationController?.navigationBar.tintColor
            = UIColor(red: 255/255.0, green: 107/255.0, blue: 100/255.0, alpha: 1.0)
        // Do any additional setup after loading the view.
        let s1 = Student(name: "Pablo Picasso", email: "test@test.com")
        let s2 = Student(name: "Vincent Van Gogh", email: "test@test.com")
        let s3 = Student(name: "Claude Monet", email:"test@test.com")
        let s4 = Student(name: "Frida Kahlo", email:"test@test.com")
        let s5 = Student(name: "Francisco Goya", email:"test@test.com")
        let s6 = Student(name: "René Magritte", email:"test@test.com")
        let s7 = Student(name: "Hieronymus Bosch", email:"test@test.com")
        let s8 = Student(name: "William Turner", email:"test@test.com")
        let s9 = Student(name: "John Singer Sargent", email:"test@test.com")
        let s10 = Student(name: "Edvard Munch", email:"test@test.com")
        let s11 = Student(name: "Andy Warhol", email:"test@test.com")
        let s12 = Student(name: "Diego Rivera", email: "test@test.com")
        let s13 = Student(name: "El Greco", email:"test@test.com")
        let s14 = Student(name: "Paul Klee", email: "test@test.com")
        let s15 = Student(name: "Jung Kim", email: "test@test.com")
        let s16 = Student(name: "Salvador Dali", email: "test@test.com")
        
        
        let c1 = ClassInfo(name: "Intro to Computer Science", meetingID: "sdfsdfsfd", profName: "Hamacker", StartTime: "8 AM", Duration: "1 hour", students: [s1,s2,s5,s6,s9,s16], description: "Required for all Freshmen")
        
        let c2 = ClassInfo(name: "Calculus 3", meetingID: "asdfasdfasdfasd", profName: "Hamacker", StartTime: "4 PM", Duration: "1.5 hours", students: [s1,s3,s5,s7,s8,s10,s11,s14,s15], description: "Prerequisite: Calc 1 and 2 or instructor permission")
        let ClassArray:[ClassInfo] = [c1,c2]
        self.ClassList = ClassArray

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ClassList.count
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.course = ClassList[indexPath.row]
        performSegueWithIdentifier("goToDetailSegue", sender: nil)
        //segue to specific meeting or description
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: MyClassesTableViewCell = tableView.dequeueReusableCellWithIdentifier("MyClassCell") as! MyClassesTableViewCell
        
        let course = ClassList[indexPath.row]
        cell.classTitle.text = course.name
        cell.authorName.text = course.profName
        cell.time.text = course.StartTime
        
        
        
        
        return cell
        
    }

}
