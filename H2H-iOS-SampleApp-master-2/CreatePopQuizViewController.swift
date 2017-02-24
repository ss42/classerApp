//
//  CreatePopQuizViewController.swift
//  H2HSDKIntegrationSample
//
//  Created by Sanjay Shrestha on 1/28/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class CreatePopQuizViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var questions = [" "]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // navigation title & color
        self.navigationItem.title = "Available Classes"
        self.navigationController?.navigationBar.tintColor
            = UIColor(red: 255/255.0, green: 107/255.0, blue: 100/255.0, alpha: 1.0)
        let addQuestionButton = UIBarButtonItem(title: "Add Question", style: UIBarButtonItemStyle.Plain, target: self, action: "addQuestion")
        navigationItem.rightBarButtonItem = addQuestionButton
        

        // Do any additional setup after loading the view.
    }
    func addQuestion(){
        questions.append(" ")
        tableView.reloadData()
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //segue to specific meeting or description
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: PopQuizTableViewCell = tableView.dequeueReusableCellWithIdentifier("PopQuizCell") as! PopQuizTableViewCell
        
        cell.Question.text = ""
        cell.option1.text = ""
        cell.option2.text = ""
        cell.option3.text = ""
        cell.option4.text = ""
        
        
        
        return cell
        
    }
    
}
