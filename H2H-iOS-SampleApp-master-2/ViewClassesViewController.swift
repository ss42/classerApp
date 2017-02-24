//
//  ViewClassesViewController.swift
//  H2HSDKIntegrationSample
//
//  Created by sanjay on 1/27/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class ViewClassesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var classes = ["xya", "abc"]
    
    var ClassList:[ClassInfo] = [ClassInfo]()
    
    var imageList = ["prof0", "prof1", "prof2", "prof4", "prof5", "prof6" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // navigation title & color
        self.navigationItem.title = "Available Classes"
        self.navigationController?.navigationBar.tintColor
            = Constants.Colors.mainColor
        // Create the navigation bar
        let navigationBar = UINavigationBar(frame: CGRectMake(0, 0, self.view.frame.size.width, 44)) // Offset by 20 pixels vertically to take the status bar into account
        
        navigationBar.backgroundColor = UIColor.whiteColor()
        //navigationBar.delegate = self
        
        let backButton = UIBarButtonItem(title: "Add", style: UIBarButtonItemStyle.Plain, target: self, action: "createClass")
        navigationItem.rightBarButtonItem = backButton
        
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
        
        
        let c1 = ClassInfo(name: "Intro to Computer Science", meetingID: "sdfsdfsfd", profName: "Sauerberg", StartTime: "8 AM", Duration: "1 hour", students: [s1,s2,s5,s6,s9,s16], description: "Required for all Freshmen")
        
        let c2 = ClassInfo(name: "Calculus 3", meetingID: "asdfasdfasdfasd", profName: "Burns", StartTime: "4 PM", Duration: "1.5 hours", students: [s1,s3,s5,s7,s8,s10,s11,s14,s15], description: "Prerequisite: Calc 1 and 2 or instructor permission")
        
        let c3 = ClassInfo(name: "Discrete Math", meetingID: "SDfsfd", profName: "Beck", StartTime: "4 PM", Duration: "2 Hours", students: [s1,s2,s5,s7,s8,s9,s11,s14,s16], description: "This course studies the mathematical elements of computer science including propositional logic, predicate logic, sets, functions and relations, combinatorics, mathematical induction, and recursion.")
        
        let c4 = ClassInfo(name: "Abstract Algebra", meetingID: "asdfsdf", profName: "Conner", StartTime: "12 pm", Duration: "1 Hour", students: [s1,s2,s5,s3,s8,s9,s11,s14,s15], description: "An introduction to the principles and concepts of modern abstract algebra. Topics will include groups, rings, and fields, with applications to number theory, the theory of equations, and geometry.")
        
        let c5 = ClassInfo(name: "Composition", meetingID: "asdf", profName: "Tillis", StartTime: "11 AM", Duration: "1 Hour", students: [s2,s5,s7,s10,s11,s14,s15], description: "Students will be required to write at least 15 pages per week, this class is required for graduation")
        
        
        let c6 = ClassInfo(name: "Film Noir", meetingID: "sdf", profName: "Hamacker", StartTime: "1 PM", Duration: "1.5 Hours", students: [s2,s3,s4,s7,s8,s10,s11,s12,s13,s14,s15], description: "An introduction to the principles and concepts of modern abstract algebra. Topics will include groups, rings, and fields, with applications to number theory, the theory of equations, and geometry.")
        
        let ClassArray:[ClassInfo] = [c1,c2,c3,c4,c5,c6]

        self.ClassList = ClassArray
        
    }
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func createClass() {
        // Do something
        performSegueWithIdentifier("createClassSegue", sender: nil)
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ClassList.count
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //segue to specific meeting or description
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.course = ClassList[indexPath.row]
        performSegueWithIdentifier("goToDetailSegue", sender: nil)
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: ClassesTableViewCell = tableView.dequeueReusableCellWithIdentifier("ViewClassesCell") as! ClassesTableViewCell

        let course = ClassList[indexPath.row]
        
        cell.Author.text = course.profName
        cell.classDescription.text = course.classDescription
        cell.classTitle.text = course.name
        cell.classSchedule.text = course.StartTime
        
    
        cell.portrait.image = UIImage(named:  (imageList[indexPath.row]))
 
    
    
        return cell

    }
    
    
    // boilerplate method to for web service call
    private func requestWithURL(urlString:String, params:Dictionary<String, AnyObject>, action: String, completionHandler:(AnyObject?, NSURLResponse?, NSError?)->Void)
    {
        // request URL set
        let request : NSMutableURLRequest = NSMutableURLRequest (URL: NSURL(string: urlString)!)
        // request type set
        request.HTTPMethod = "POST"
        
        var jsonData:NSData? = nil
        do
        {
            // convert params to NSData
            jsonData = try NSJSONSerialization.dataWithJSONObject(params, options: [])
        }
        catch let error as NSError {
            GUIUtility.sharedInstance.dismissLoadingAndDisplayAlertWith( "Error: JSON Parsing",
                                                                         message: error.localizedDescription)
            print("json error: \(error.localizedDescription)")
            return
        }
        
        // convert json in NSData to String
        let jsonString = String.init(data: jsonData!, encoding: NSUTF8StringEncoding)
        
        var body: String = ""
        if action == "createMeeting"
        {
            body = "action=createMeeting&json=" + jsonString!
            
            // if action is of type: createMeeting
            // set apiToken in the header
            // this api token is recieved from the login web service
            request.setValue(Core.sharedInstance.userInfo?.apiToken, forHTTPHeaderField: "apiToken")
        }
        else if action == "getWebRTCServerList"
        {
            body = "json=" + jsonString!
        }
        
        // set request body
        let bodyEncoded : NSString = body.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLHostAllowedCharacterSet())!
        let httpBody : NSData? = bodyEncoded.dataUsingEncoding(NSUTF8StringEncoding)
        request.HTTPBody = httpBody
        
        // set common other request headers
        request.setValue("application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
        request.setValue(NSString(format:"%llu", httpBody!.length) as String, forHTTPHeaderField: "Content-Length")
        
        //let postDataTask = NSURLSession.sharedSession().dataTaskWithRequest(request, completionHandler: { (data, response, error) in
        let postDataTask = ((UIApplication.sharedApplication().delegate) as! AppDelegate!).getURLSession().dataTaskWithRequest(request, completionHandler: { (data, response, error) in
            do
            {
                if let dataUnrapped = data
                {
                    let jsonObject = try NSJSONSerialization.JSONObjectWithData(dataUnrapped, options: [])
                    
                    let array = jsonObject as? NSMutableArray
                    if array == nil
                    {
                        // in case of create meeting the object is of type dictionary
                        let dictionary = jsonObject as? NSMutableDictionary
                        completionHandler(dictionary, response, error)
                    }
                    else
                    {
                        // in case of server list, object is of type array
                        completionHandler(array, response, error)
                    }
                }
                else
                {
                    print("Error: No data recieved")
                    GUIUtility.sharedInstance.dismissLoadingAndDisplayAlertWith( "Error: Response",
                        message: "No data recieved from server")
                }
            }
            catch let error as NSError {
                print("json error: \(error.localizedDescription)")
                GUIUtility.sharedInstance.dismissLoadingAndDisplayAlertWith( "Error: JSON Parsing",
                    message: error.localizedDescription)
            }
        })
        
        postDataTask.resume()
    }
    

}
